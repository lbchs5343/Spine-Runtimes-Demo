package com.bykv.vk.openvk.preload.geckox.ox.dq;

import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public final class dq {
    private static com.bykv.vk.openvk.preload.geckox.ox.dq d(File file, long j) throws IOException {
        if (j <= 0) {
            try {
                return new d(file);
            } catch (Exception e2) {
                throw new IOException("create FileBuffer failed! file:" + file.getAbsolutePath() + " caused by:" + e2.getMessage(), e2);
            }
        }
        try {
            return new ox(j, file);
        } catch (Exception e3) {
            throw new RuntimeException("create random access file failed! file:" + file.getAbsolutePath() + " caused by:" + e3.getMessage(), e3);
        }
    }

    public static com.bykv.vk.openvk.preload.geckox.ox.dq dq(File file, long j) throws IOException {
        com.bykv.vk.openvk.preload.geckox.ox.dq d2 = d(file, j);
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "buffer type:" + d2.getClass());
        return d2;
    }
}
