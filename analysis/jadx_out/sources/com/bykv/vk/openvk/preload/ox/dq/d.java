package com.bykv.vk.openvk.preload.ox.dq;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class d implements dq {

    /* renamed from: d, reason: collision with root package name */
    public AtomicBoolean f686d = new AtomicBoolean(false);
    public com.bykv.vk.openvk.preload.geckox.iw.d dq;

    public d(Context context, String str, File file) {
        if (context == null) {
            throw new RuntimeException("context == null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("access key empty");
        }
        if (file == null) {
            throw new RuntimeException("resRootDir == null");
        }
        this.dq = new com.bykv.vk.openvk.preload.geckox.iw.d(context, str, file);
    }

    @Override // com.bykv.vk.openvk.preload.ox.dq.dq
    public final File d(String str) throws Exception {
        if (this.f686d.get()) {
            throw new RuntimeException("released!");
        }
        com.bykv.vk.openvk.preload.geckox.no.d.dq("WebOffline-falcon", "GeckoResLoader ready to load, file:", str);
        com.bykv.vk.openvk.preload.geckox.iw.d dVar = this.dq;
        if (dVar.f656d.get()) {
            throw new RuntimeException("released");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("relativePath empty");
        }
        com.bykv.vk.openvk.preload.geckox.iw.dq dq = dVar.dq(str.trim());
        return dq.dq(dq.f657d).d(com.bykv.vk.openvk.preload.geckox.iw.dq.dq(dq.f657d, str));
    }

    @Override // com.bykv.vk.openvk.preload.ox.dq.dq
    public final InputStream dq(String str) throws Exception {
        if (this.f686d.get()) {
            throw new RuntimeException("released!");
        }
        com.bykv.vk.openvk.preload.geckox.no.d.dq("WebOffline-falcon", "GeckoResLoader ready to load, file:", str);
        com.bykv.vk.openvk.preload.geckox.iw.d dVar = this.dq;
        if (dVar.f656d.get()) {
            throw new RuntimeException("released");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("relativePath empty");
        }
        com.bykv.vk.openvk.preload.geckox.iw.dq dq = dVar.dq(str.trim());
        return dq.dq(dq.f657d).dq(com.bykv.vk.openvk.preload.geckox.iw.dq.dq(dq.f657d, str));
    }
}
