package g;

import com.google.android.gms.internal.ads.zzalq;

/* loaded from: classes3.dex */
public final class ces implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final int f12758a;

    /* renamed from: b, reason: collision with root package name */
    public final zzalq f12759b;

    public ces(int i, zzalq zzalqVar) {
        this.f12758a = i;
        this.f12759b = zzalqVar;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return Integer.compare(this.f12758a, ((ces) obj).f12758a);
    }
}
