package g;

import com.google.android.gms.internal.ads.zzed;

/* loaded from: classes3.dex */
public final class azk implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public long f11113a;

    /* renamed from: c, reason: collision with root package name */
    public long f11115c = -9223372036854775807L;

    /* renamed from: b, reason: collision with root package name */
    public final zzed f11114b = new zzed();

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        azk azkVar = (azk) obj;
        int compare = Long.compare(this.f11115c, azkVar.f11115c);
        return compare != 0 ? compare : Long.compare(this.f11113a, azkVar.f11113a);
    }
}
