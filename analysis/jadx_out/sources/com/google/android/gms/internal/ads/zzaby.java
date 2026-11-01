package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzaby {

    /* renamed from: a, reason: collision with root package name */
    public long f4055a;

    /* renamed from: b, reason: collision with root package name */
    public long f4056b = 0;

    /* renamed from: c, reason: collision with root package name */
    public long f4057c;

    /* renamed from: d, reason: collision with root package name */
    public final long f4058d;

    /* renamed from: e, reason: collision with root package name */
    public long f4059e;

    /* renamed from: f, reason: collision with root package name */
    public final long f4060f;

    /* renamed from: g, reason: collision with root package name */
    public final long f4061g;
    public long h;

    public zzaby(long j, long j2, long j3, long j4, long j5, long j6) {
        this.f4058d = j;
        this.f4060f = j2;
        this.f4057c = j3;
        this.f4059e = j4;
        this.h = j5;
        this.f4061g = j6;
        this.f4055a = i(j2, 0L, j3, j4, j5, j6);
    }

    public static long i(long j, long j2, long j3, long j4, long j5, long j6) {
        if (j4 + 1 >= j5 || 1 + j2 >= j3) {
            return j4;
        }
        long j7 = (long) (((j5 - j4) / (j3 - j2)) * (j - j2));
        return Math.max(j4, Math.min(((j4 + j7) - j6) - (j7 / 20), (-1) + j5));
    }
}
