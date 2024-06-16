/*
  Warnings:

  - You are about to drop the `DocumentMetadata` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MedicalDocuments` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Users` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "DocumentMetadata" DROP CONSTRAINT "DocumentMetadata_DocumentID_fkey";

-- DropForeignKey
ALTER TABLE "MedicalDocuments" DROP CONSTRAINT "MedicalDocuments_UserID_fkey";

-- DropTable
DROP TABLE "DocumentMetadata";

-- DropTable
DROP TABLE "MedicalDocuments";

-- DropTable
DROP TABLE "Users";
