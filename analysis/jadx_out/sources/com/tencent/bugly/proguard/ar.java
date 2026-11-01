package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class ar implements Comparable<ar> {

    /* renamed from: a, reason: collision with root package name */
    public long f9607a = -1;

    /* renamed from: b, reason: collision with root package name */
    public long f9608b = -1;

    /* renamed from: c, reason: collision with root package name */
    public String f9609c = null;

    /* renamed from: d, reason: collision with root package name */
    public boolean f9610d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f9611e = false;

    /* renamed from: f, reason: collision with root package name */
    public int f9612f = 0;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(ar arVar) {
        ar arVar2 = arVar;
        if (arVar2 == null) {
            return 1;
        }
        long j = this.f9608b - arVar2.f9608b;
        if (j <= 0) {
            return j < 0 ? -1 : 0;
        }
        return 1;
    }
}
