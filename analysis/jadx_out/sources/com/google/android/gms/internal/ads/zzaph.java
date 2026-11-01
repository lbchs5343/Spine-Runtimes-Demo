package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.awf;

/* loaded from: classes3.dex */
public final class zzaph {

    /* renamed from: a, reason: collision with root package name */
    public final String f4437a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4438b;

    public zzaph(String str, String str2) {
        this.f4437a = str;
        this.f4438b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaph.class == obj.getClass()) {
            zzaph zzaphVar = (zzaph) obj;
            if (TextUtils.equals(this.f4437a, zzaphVar.f4437a) && TextUtils.equals(this.f4438b, zzaphVar.f4438b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f4438b.hashCode() + (this.f4437a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Header[name=");
        sb.append(this.f4437a);
        sb.append(",value=");
        return awf.ad(sb, this.f4438b, "]");
    }

    public final String zza() {
        return this.f4437a;
    }

    public final String zzb() {
        return this.f4438b;
    }
}
