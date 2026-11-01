package com.bykv.vk.openvk.preload.geckox.dq.dq;

import android.annotation.SuppressLint;
import java.io.File;
import java.util.List;

@SuppressLint({"CI_StaticFieldLeak"})
/* loaded from: classes.dex */
public abstract class d {
    protected List<String> iw;
    protected dq p;
    protected File s;
    public static final d dq = new p();

    /* renamed from: d, reason: collision with root package name */
    public static final d f638d = new iw();
    public static final d ox = new s();

    public abstract void dq();

    public void dq(dq dqVar, File file, List<String> list) {
        this.p = dqVar;
        this.s = file;
        this.iw = list;
    }
}
