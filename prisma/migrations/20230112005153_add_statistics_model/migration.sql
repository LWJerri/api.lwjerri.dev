-- CreateTable
CREATE TABLE "Statistics" (
    "id" TEXT NOT NULL,
    "numRange" INTEGER NOT NULL,
    "path" TEXT NOT NULL,
    "requestedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Statistics_pkey" PRIMARY KEY ("id")
);
