import { ApiProperty } from '@nestjs/swagger';
import { Role } from 'src/core/common/enums';

export class CreateUserDto {
  @ApiProperty({
    description: 'The name of the User',
    format: 'string',
    example: 'user',
    required: true
  })
  readonly username: string;

  @ApiProperty({
    description: 'The password of the User',
    format: 'string',
    example: 'abracadabra',
    required: true
  })
  readonly password: string;

  @ApiProperty({
    description: 'The email of the User',
    format: 'string',
    example: 'johndoe@mail.com',
    required: true
  })
  readonly email: string;

  @ApiProperty({
    description: 'The role of the User',
    format: 'string',
    example: 'PUBLIC, ADMIN, ROOT',
    default: 'PUBLIC'
  })
  readonly role: Role;

  @ApiProperty({
    description: 'The active status of the User',
    format: 'boolean',
    default: true
  })
  readonly active: boolean;
}
