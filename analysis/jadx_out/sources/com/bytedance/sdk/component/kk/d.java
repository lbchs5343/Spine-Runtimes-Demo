package com.bytedance.sdk.component.kk;

import com.bytedance.sdk.component.d.dq.no;
import java.io.File;
import java.util.Map;

/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    final String f1981d;
    final int dq;
    final long iw;
    private final boolean kk;
    no mn;
    final Map<String, String> ox;
    final String p;
    final long s;
    private File ia = null;
    private byte[] o = null;

    public d(boolean z, int i, String str, Map<String, String> map, String str2, long j, long j2) {
        this.kk = z;
        this.dq = i;
        this.f1981d = str;
        this.ox = map;
        this.p = str2;
        this.s = j;
        this.iw = j2;
    }

    public String d() {
        return this.f1981d;
    }

    public int dq() {
        return this.dq;
    }

    public void dq(no noVar) {
        this.mn = noVar;
    }

    public void dq(File file) {
        this.ia = file;
    }

    public void dq(byte[] bArr) {
        this.o = bArr;
    }

    public boolean ia() {
        return this.kk;
    }

    public long iw() {
        return this.iw;
    }

    public long kk() {
        return this.s - this.iw;
    }

    public File mn() {
        return this.ia;
    }

    public no no() {
        return this.mn;
    }

    public byte[] o() {
        return this.o;
    }

    public Map<String, String> ox() {
        return this.ox;
    }

    public String p() {
        return this.p;
    }

    public long s() {
        return this.s;
    }
}
