-- CreateTable
CREATE TABLE "Users" (
    "UserID" SERIAL NOT NULL,
    "UserName" TEXT NOT NULL,
    "Email" TEXT NOT NULL,
    "PasswordHash" TEXT NOT NULL,
    "RegistrationDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Users_pkey" PRIMARY KEY ("UserID")
);

-- CreateTable
CREATE TABLE "MedicalDocuments" (
    "DocumentID" SERIAL NOT NULL,
    "UserID" INTEGER NOT NULL,
    "DocumentName" TEXT NOT NULL,
    "DocumentType" TEXT NOT NULL,
    "UploadDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "MedicalDocuments_pkey" PRIMARY KEY ("DocumentID")
);

-- CreateTable
CREATE TABLE "DocumentMetadata" (
    "MetadataID" SERIAL NOT NULL,
    "DocumentID" INTEGER NOT NULL,
    "MetadataKey" TEXT NOT NULL,
    "MetadataValue" TEXT NOT NULL,

    CONSTRAINT "DocumentMetadata_pkey" PRIMARY KEY ("MetadataID")
);

-- AddForeignKey
ALTER TABLE "MedicalDocuments" ADD CONSTRAINT "MedicalDocuments_UserID_fkey" FOREIGN KEY ("UserID") REFERENCES "Users"("UserID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DocumentMetadata" ADD CONSTRAINT "DocumentMetadata_DocumentID_fkey" FOREIGN KEY ("DocumentID") REFERENCES "MedicalDocuments"("DocumentID") ON DELETE RESTRICT ON UPDATE CASCADE;
