package com.bykv.vk.openvk.preload.geckox.iw.dq;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public abstract class dq {
    private File dq;

    public dq(File file) {
        this.dq = file;
    }

    public abstract File d(File file, String str) throws IOException;

    public final File d(String str) throws IOException {
        return d(this.dq, str);
    }

    public abstract InputStream dq(File file, String str) throws IOException;

    public final InputStream dq(String str) throws IOException {
        return dq(this.dq, str);
    }
}
