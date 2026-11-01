package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import g.he;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes3.dex */
public class zzca {

    /* renamed from: a, reason: collision with root package name */
    public zzfzo f5112a;

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f5113b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfzo f5114c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfzo f5115d;

    /* renamed from: e, reason: collision with root package name */
    public int f5116e;

    /* renamed from: f, reason: collision with root package name */
    public final zzfzo f5117f;

    /* renamed from: g, reason: collision with root package name */
    public int f5118g;
    public int h;
    public final HashMap i;
    public boolean j;
    public final zzbz k;

    @Deprecated
    public zzca() {
        this.f5116e = he.UNDEFINED_ITEM_ID;
        this.h = he.UNDEFINED_ITEM_ID;
        this.j = true;
        this.f5114c = zzfzo.zzn();
        this.f5115d = zzfzo.zzn();
        this.f5117f = zzfzo.zzn();
        this.k = zzbz.zza;
        this.f5112a = zzfzo.zzn();
        this.f5118g = 0;
        this.i = new HashMap();
        this.f5113b = new HashSet();
    }

    public zzca(zzxp zzxpVar) {
        this.f5116e = zzxpVar.zzi;
        this.h = zzxpVar.zzj;
        this.j = zzxpVar.zzk;
        this.f5114c = zzxpVar.zzl;
        this.f5115d = zzxpVar.zzn;
        this.f5117f = zzxpVar.zzr;
        this.k = zzxpVar.zzs;
        this.f5112a = zzxpVar.zzt;
        this.f5118g = zzxpVar.zzu;
        this.f5113b = new HashSet(zzxpVar.zzB);
        this.i = new HashMap(zzxpVar.zzA);
    }

    public final zzca zze(Context context) {
        CaptioningManager captioningManager;
        if ((zzen.zza >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
            this.f5118g = 1088;
            Locale locale = captioningManager.getLocale();
            if (locale != null) {
                this.f5112a = zzfzo.zzo(locale.toLanguageTag());
            }
        }
        return this;
    }

    public final zzca zzf(int i, int i2, boolean z) {
        this.f5116e = i;
        this.h = i2;
        this.j = true;
        return this;
    }
}
