-- This didn't work... I broke correspondence of video_id column...
-- My video id's do not map one to one to youtubes... Apparently misunderstood the encryption technique :(
-- Identified delusion related video from popular channel
ALTER TABLE comments ADD COLUMN is_delu_related_vid bool;

UPDATE comments
SET is_delu_related_vid = 1
WHERE video_id IN (
'gAAAAABkBynJy8gxQLQm6l1c_xwVtSVN3i3OvkpQCfzYgbkBSdcjjQs9GxWOpqYcdRmOxGTo06Hn-aWcO77NuQ2ziuVwGVkhEw==',
'gAAAAABkByuV8N4OTx5HlJDtfBWMI6kFkswLS9f2QHIGdG08tJkccuMI3AcexqH_iclQ9PIM8V0QKG_QQEt9MCwFTDVUXVdH5w==',
'gAAAAABkBys8rCInDpdQO6_7lrc0xKg-zN8Sw3sXzRs7Qit4WeukwLVobVxPqMD55NasFwDOiQcBXBN9Vyx1y4tifcnEWAGwwg==')