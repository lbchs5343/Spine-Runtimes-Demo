package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzalq {

    /* renamed from: a, reason: collision with root package name */
    public int f4262a;

    /* renamed from: d, reason: collision with root package name */
    public float f4265d;
    public int i;
    public String h = "";
    public String m = "";
    public Set o = Collections.EMPTY_SET;

    /* renamed from: e, reason: collision with root package name */
    public String f4266e = "";

    /* renamed from: g, reason: collision with root package name */
    public String f4268g = null;
    public boolean p = false;
    public boolean l = false;
    public int n = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f4263b = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f4267f = -1;
    public int k = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f4264c = -1;
    public boolean j = false;

    public static int q(int i, int i2, String str, String str2) {
        if (str.isEmpty() || i == -1) {
            return i;
        }
        if (str.equals(str2)) {
            return i + i2;
        }
        return -1;
    }

    public final float zza() {
        return this.f4265d;
    }

    public final int zzb() {
        if (this.l) {
            return this.f4262a;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public final int zzc() {
        if (this.p) {
            return this.i;
        }
        throw new IllegalStateException("Font color not defined");
    }

    public final int zzd() {
        return this.k;
    }

    public final int zze() {
        return this.f4264c;
    }

    public final int zzf(String str, String str2, Set set, String str3) {
        if (this.h.isEmpty() && this.m.isEmpty() && this.o.isEmpty() && this.f4266e.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int q = q(q(q(0, C.ENCODING_PCM_32BIT, this.h, str), 2, this.m, str2), 4, this.f4266e, str3);
        if (q == -1 || !set.containsAll(this.o)) {
            return 0;
        }
        return (this.o.size() * 4) + q;
    }

    public final int zzg() {
        int i = this.f4263b;
        if (i == -1 && this.f4267f == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.f4267f == 1 ? 2 : 0);
    }

    public final zzalq zzh(int i) {
        this.f4262a = i;
        this.l = true;
        return this;
    }

    public final zzalq zzi(boolean z) {
        this.f4263b = 1;
        return this;
    }

    public final zzalq zzj(boolean z) {
        this.j = z;
        return this;
    }

    public final zzalq zzk(int i) {
        this.i = i;
        this.p = true;
        return this;
    }

    public final zzalq zzl(String str) {
        this.f4268g = zzfwa.zza(str);
        return this;
    }

    public final zzalq zzm(float f2) {
        this.f4265d = f2;
        return this;
    }

    public final zzalq zzn(int i) {
        this.k = i;
        return this;
    }

    public final zzalq zzo(boolean z) {
        this.f4267f = 1;
        return this;
    }

    public final zzalq zzp(int i) {
        this.f4264c = i;
        return this;
    }

    public final zzalq zzq(boolean z) {
        this.n = 1;
        return this;
    }

    public final String zzr() {
        return this.f4268g;
    }

    public final void zzs(String[] strArr) {
        this.o = new HashSet(Arrays.asList(strArr));
    }

    public final void zzt(String str) {
        this.h = str;
    }

    public final void zzu(String str) {
        this.m = str;
    }

    public final void zzv(String str) {
        this.f4266e = str;
    }

    public final boolean zzw() {
        return this.j;
    }

    public final boolean zzx() {
        return this.l;
    }

    public final boolean zzy() {
        return this.p;
    }

    public final boolean zzz() {
        return this.n == 1;
    }
}
