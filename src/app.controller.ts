import { Controller, Get } from '@nestjs/common';

@Controller()
export class AppController {
  @Get('/ping')
  ping(): string {
    return 'pong';
  }

  @Get()
  getHello(): string {
    return 'Hello task ';
  }
}
