import { Module } from '@nestjs/common';

import { OrganizationController } from './organization.controller';
import { OrganizationControllerAdmin } from './organization.controller.admin';
import { OrganizationService } from './organization.service';
import { DocumentModule } from '../document/document.module';
import { UserModule } from '../user/user.module';

@Module({
  imports: [DocumentModule, UserModule],
  providers: [OrganizationService],
  controllers: [OrganizationController, OrganizationControllerAdmin],
})
export class OrganizationModule {}
