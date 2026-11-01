package g;

import com.google.android.gms.internal.ads.zzgam;
import java.util.Collection;
import java.util.Map;
import java.util.NavigableMap;
import java.util.SortedMap;

/* loaded from: classes3.dex */
public abstract class bhi implements zzgam {

    /* renamed from: a, reason: collision with root package name */
    public transient geh f11585a;

    /* renamed from: b, reason: collision with root package name */
    public transient dfb f11586b;

    /* renamed from: c, reason: collision with root package name */
    public transient gbq f11587c;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgam) {
            return zzs().equals(((zzgam) obj).zzs());
        }
        return false;
    }

    public final int hashCode() {
        return ((geh) zzs()).f17983f.hashCode();
    }

    public final String toString() {
        return ((geh) zzs()).f17983f.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgam
    public final Collection zzr() {
        gbq gbqVar = this.f11587c;
        if (gbqVar != null) {
            return gbqVar;
        }
        gbq gbqVar2 = new gbq(0, (gpx) this);
        this.f11587c = gbqVar2;
        return gbqVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgam
    public final Map zzs() {
        geh gehVar = this.f11585a;
        if (gehVar != null) {
            return gehVar;
        }
        gpx gpxVar = (gpx) this;
        Map map = gpxVar.f18557d;
        geh beuVar = map instanceof NavigableMap ? new beu(gpxVar, (NavigableMap) map) : map instanceof SortedMap ? new grn(gpxVar, (SortedMap) map) : new geh(gpxVar, map);
        this.f11585a = beuVar;
        return beuVar;
    }
}
