/*
  Warnings:

  - Added the required column `gym_id` to the `CheckIn` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "CheckIn" ADD COLUMN     "gym_id" TEXT NOT NULL,
ADD COLUMN     "user_id" TEXT;

-- AddForeignKey
ALTER TABLE "CheckIn" ADD CONSTRAINT "CheckIn_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CheckIn" ADD CONSTRAINT "CheckIn_gym_id_fkey" FOREIGN KEY ("gym_id") REFERENCES "Gym"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
