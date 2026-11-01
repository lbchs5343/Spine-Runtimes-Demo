package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import g.abj;
import g.fqp;
import g.fwl;
import g.sr;
import g.tt;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzov {

    /* renamed from: a, reason: collision with root package name */
    public zzg f8828a;

    /* renamed from: b, reason: collision with root package name */
    public final sr f8829b;

    /* renamed from: c, reason: collision with root package name */
    public final tt f8830c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f8831d;

    /* renamed from: e, reason: collision with root package name */
    public zzop f8832e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8833f;

    /* renamed from: g, reason: collision with root package name */
    public final Handler f8834g;
    public final zzqf h;
    public final fwl i;
    public fqp j;

    public zzov(Context context, zzqf zzqfVar, zzg zzgVar, fqp fqpVar) {
        Context applicationContext = context.getApplicationContext();
        this.f8831d = applicationContext;
        this.h = zzqfVar;
        this.f8828a = zzgVar;
        this.j = fqpVar;
        Handler handler = new Handler(zzen.zzz(), null);
        this.f8834g = handler;
        this.i = zzen.zza >= 23 ? new fwl(this) : null;
        this.f8829b = new sr(17, this);
        zzop zzopVar = zzop.zza;
        String str = zzen.zzc;
        Uri uriFor = ("Amazon".equals(str) || "Xiaomi".equals(str)) ? Settings.Global.getUriFor("external_surround_sound_enabled") : null;
        this.f8830c = uriFor != null ? new tt(this, handler, applicationContext.getContentResolver(), uriFor) : null;
    }

    public final void k(zzop zzopVar) {
        if (!this.f8833f || zzopVar.equals(this.f8832e)) {
            return;
        }
        this.f8832e = zzopVar;
        this.h.zza.zzJ(zzopVar);
    }

    public final zzop zzc() {
        fwl fwlVar;
        if (this.f8833f) {
            zzop zzopVar = this.f8832e;
            zzopVar.getClass();
            return zzopVar;
        }
        this.f8833f = true;
        tt ttVar = this.f8830c;
        if (ttVar != null) {
            ttVar.f20064a.registerContentObserver(ttVar.f20065b, false, ttVar);
        }
        int i = zzen.zza;
        Handler handler = this.f8834g;
        Context context = this.f8831d;
        if (i >= 23 && (fwlVar = this.i) != null) {
            abj.a(context, fwlVar, handler);
        }
        zzop f2 = zzop.f(context, context.registerReceiver(this.f8829b, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, handler), this.f8828a, this.j);
        this.f8832e = f2;
        return f2;
    }

    public final void zzg(zzg zzgVar) {
        this.f8828a = zzgVar;
        k(zzop.e(this.f8831d, zzgVar, this.j));
    }

    public final void zzh(AudioDeviceInfo audioDeviceInfo) {
        fqp fqpVar = this.j;
        if (Objects.equals(audioDeviceInfo, fqpVar == null ? null : fqpVar.f17252a)) {
            return;
        }
        fqp fqpVar2 = audioDeviceInfo != null ? new fqp(audioDeviceInfo) : null;
        this.j = fqpVar2;
        k(zzop.e(this.f8831d, this.f8828a, fqpVar2));
    }

    public final void zzi() {
        fwl fwlVar;
        if (this.f8833f) {
            this.f8832e = null;
            int i = zzen.zza;
            Context context = this.f8831d;
            if (i >= 23 && (fwlVar = this.i) != null) {
                abj.b(context, fwlVar);
            }
            context.unregisterReceiver(this.f8829b);
            tt ttVar = this.f8830c;
            if (ttVar != null) {
                ttVar.f20064a.unregisterContentObserver(ttVar);
            }
            this.f8833f = false;
        }
    }
}
