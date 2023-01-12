/*
  Warnings:

  - Made the column `numRange` on table `statistics` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "statistics" ALTER COLUMN "numRange" SET NOT NULL;
