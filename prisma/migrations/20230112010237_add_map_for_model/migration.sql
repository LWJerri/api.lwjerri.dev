/*
  Warnings:

  - You are about to drop the `Statistics` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Statistics";

-- CreateTable
CREATE TABLE "statistics" (
    "id" TEXT NOT NULL,
    "numRange" INTEGER NOT NULL,
    "path" TEXT NOT NULL,
    "requestedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "statistics_pkey" PRIMARY KEY ("id")
);
