package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzak {

    /* renamed from: a, reason: collision with root package name */
    public final zzfzo f4215a;

    /* renamed from: b, reason: collision with root package name */
    public final zzat f4216b;

    /* renamed from: c, reason: collision with root package name */
    public String f4217c;

    /* renamed from: d, reason: collision with root package name */
    public Uri f4218d;

    /* renamed from: e, reason: collision with root package name */
    public final List f4219e;

    public zzak() {
        new zzal();
        zzfzo.zzn();
        this.f4219e = Collections.EMPTY_LIST;
        this.f4215a = zzfzo.zzn();
        new zzap();
        this.f4216b = zzat.zza;
    }

    public final zzak zza(String str) {
        this.f4217c = str;
        return this;
    }

    public final zzak zzb(Uri uri) {
        this.f4218d = uri;
        return this;
    }

    public final zzaw zzc() {
        Uri uri = this.f4218d;
        zzar zzarVar = uri != null ? new zzar(uri, this.f4219e, this.f4215a) : null;
        String str = this.f4217c;
        if (str == null) {
            str = "";
        }
        return new zzaw(str, new zzan(), zzarVar, new zzaq(), zzba.zza, this.f4216b);
    }
}
