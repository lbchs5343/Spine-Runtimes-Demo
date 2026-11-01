package com.bykv.vk.component.ttvideo.utils;

import android.os.SystemClock;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private int f502a = 1;

    /* renamed from: b, reason: collision with root package name */
    private int f503b = 2;

    /* renamed from: c, reason: collision with root package name */
    private int f504c = 2;

    /* renamed from: d, reason: collision with root package name */
    private int f505d = 0;

    /* renamed from: e, reason: collision with root package name */
    private long f506e = 0;

    public void a() {
        this.f505d = 0;
        if (this.f504c == this.f502a) {
            this.f506e = SystemClock.elapsedRealtime();
        }
    }

    public int b() {
        if (this.f504c == this.f502a) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            int i = (int) (elapsedRealtime - this.f506e);
            if (i >= 0) {
                this.f505d += i;
            }
            this.f506e = elapsedRealtime;
        }
        return this.f505d;
    }

    public void c() {
        this.f504c = this.f503b;
        this.f505d = 0;
        this.f506e = 0L;
    }

    public void d() {
        if (this.f504c == this.f503b) {
            this.f504c = this.f502a;
            this.f506e = SystemClock.elapsedRealtime();
        }
    }

    public void e() {
        if (this.f504c == this.f502a) {
            this.f504c = this.f503b;
            int elapsedRealtime = (int) (SystemClock.elapsedRealtime() - this.f506e);
            if (elapsedRealtime >= 0) {
                this.f505d += elapsedRealtime;
            }
        }
    }
}
