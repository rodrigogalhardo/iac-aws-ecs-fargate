resource "aws_ecs_cluster" "ecs" {
  name = var.aws_ecs_cluster_name
}

resource "aws_ecs_service" "service" {
  name                   = var.aws_ecs_service_name
  cluster                = aws_ecs_cluster.ecs.arn
  launch_type            = "FARGATE"
  enable_execute_command = true

  deployment_maximum_percent         = 200
  deployment_minimum_healthy_percent = 100
  desired_count                      = 1
  task_definition                    = aws_ecs_task_definition.td.arn

  network_configuration {
    assign_public_ip = true
    security_groups  = [aws_security_group.sg.id]
    subnets          = [aws_subnet.sn1.id, aws_subnet.sn2.id, aws_subnet.sn3.id]
  }
}

resource "aws_ecs_task_definition" "td" {
  container_definitions = jsonencode([
    {
      name      = var.aws_ecs_container_definition_name
      image     = "${aws_ecr_repository.repository.repository_url}:latest"
      cpu       = 256
      memory    = 512
      essential = true
      portMappings = [
        {
          containerPort = 3333
          hostPort      = 3333
          protocol      = "tcp"
        }
      ]
    }
  ])

  family = var.aws_ecs_task_definition_family_name
  requires_compatibilities = ["FARGATE"]

  cpu = "256"
  memory = "512"
  network_mode = "awsvpc"
  task_role_arn = var.aws_task_role_arn
  execution_role_arn = var.aws_task_role_arn

}
