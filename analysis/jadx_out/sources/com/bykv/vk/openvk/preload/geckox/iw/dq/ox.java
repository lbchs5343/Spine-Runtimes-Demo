package com.bykv.vk.openvk.preload.geckox.iw.dq;

import g.awf;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class ox extends dq {
    public ox(File file) {
        super(file);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.iw.dq.dq
    public final File d(File file, String str) throws IOException {
        File file2 = new File(file, awf.ad(new StringBuilder("res"), File.separator, str));
        if (!file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
            throw new IOException("file not found");
        }
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "NormalFileLoader, file:", file2.getAbsolutePath());
        return file2.getCanonicalFile();
    }

    @Override // com.bykv.vk.openvk.preload.geckox.iw.dq.dq
    public final InputStream dq(File file, String str) throws IOException {
        File file2 = new File(file, awf.ad(new StringBuilder("res"), File.separator, str));
        if (!file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
            throw new IOException("file not found");
        }
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "NormalFileLoader, file:", file2.getAbsolutePath());
        return new FileInputStream(file2.getCanonicalFile());
    }
}
