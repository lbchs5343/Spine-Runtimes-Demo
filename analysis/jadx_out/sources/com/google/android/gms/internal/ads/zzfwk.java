package com.google.android.gms.internal.ads;

import g.cis;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzfwk {

    /* renamed from: a, reason: collision with root package name */
    public final String f8215a;

    /* renamed from: b, reason: collision with root package name */
    public final cis f8216b;

    /* renamed from: c, reason: collision with root package name */
    public cis f8217c;

    public zzfwk(String str) {
        cis cisVar = new cis();
        this.f8216b = cisVar;
        this.f8217c = cisVar;
        this.f8215a = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f8215a);
        sb.append('{');
        cis cisVar = (cis) this.f8216b.f12948b;
        String str = "";
        while (cisVar != null) {
            Object obj = cisVar.f12947a;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r3.length() - 1);
            }
            cisVar = (cis) cisVar.f12948b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzfwk zza(Object obj) {
        cis cisVar = new cis();
        this.f8217c.f12948b = cisVar;
        this.f8217c = cisVar;
        cisVar.f12947a = obj;
        return this;
    }
}
