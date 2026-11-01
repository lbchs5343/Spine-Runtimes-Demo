package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.text.Layout;

/* loaded from: classes3.dex */
public final class zzcr {

    /* renamed from: c, reason: collision with root package name */
    public float f5548c;
    public CharSequence h = null;
    public Bitmap l = null;
    public Layout.Alignment n = null;

    /* renamed from: e, reason: collision with root package name */
    public Layout.Alignment f5550e = null;

    /* renamed from: g, reason: collision with root package name */
    public float f5552g = -3.4028235E38f;
    public int i = Integer.MIN_VALUE;
    public int o = Integer.MIN_VALUE;

    /* renamed from: a, reason: collision with root package name */
    public float f5546a = -3.4028235E38f;
    public int k = Integer.MIN_VALUE;
    public int m = Integer.MIN_VALUE;

    /* renamed from: b, reason: collision with root package name */
    public float f5547b = -3.4028235E38f;

    /* renamed from: f, reason: collision with root package name */
    public float f5551f = -3.4028235E38f;
    public float j = -3.4028235E38f;

    /* renamed from: d, reason: collision with root package name */
    public int f5549d = Integer.MIN_VALUE;

    public final int zza() {
        return this.o;
    }

    public final int zzb() {
        return this.k;
    }

    public final zzcr zzc(Bitmap bitmap) {
        this.l = bitmap;
        return this;
    }

    public final zzcr zzd(float f2) {
        this.j = f2;
        return this;
    }

    public final zzcr zze(float f2, int i) {
        this.f5552g = f2;
        this.i = i;
        return this;
    }

    public final zzcr zzf(int i) {
        this.o = i;
        return this;
    }

    public final zzcr zzg(Layout.Alignment alignment) {
        this.f5550e = alignment;
        return this;
    }

    public final zzcr zzh(float f2) {
        this.f5546a = f2;
        return this;
    }

    public final zzcr zzi(int i) {
        this.k = i;
        return this;
    }

    public final zzcr zzj(float f2) {
        this.f5548c = f2;
        return this;
    }

    public final zzcr zzk(float f2) {
        this.f5551f = f2;
        return this;
    }

    public final zzcr zzl(CharSequence charSequence) {
        this.h = charSequence;
        return this;
    }

    public final zzcr zzm(Layout.Alignment alignment) {
        this.n = alignment;
        return this;
    }

    public final zzcr zzn(float f2, int i) {
        this.f5547b = f2;
        this.m = i;
        return this;
    }

    public final zzcr zzo(int i) {
        this.f5549d = i;
        return this;
    }

    public final zzct zzp() {
        return new zzct(this.h, this.n, this.f5550e, this.l, this.f5552g, this.i, this.o, this.f5546a, this.k, this.m, this.f5547b, this.f5551f, this.j, this.f5549d, this.f5548c);
    }

    public final CharSequence zzq() {
        return this.h;
    }
}
