import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { UserModule } from './infrastructure/user/user.module.js';

@Module({
    imports: [
      ConfigModule.forRoot(),
      UserModule
    ],
    controllers: [],
    providers: [],
  })
  export class AppModule {}