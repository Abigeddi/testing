/*
  Warnings:

  - Added the required column `rank` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `UpdatedAt` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `password` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Profile" ADD COLUMN     "rank" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "UpdatedAt" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "isonline" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "password" TEXT NOT NULL;
