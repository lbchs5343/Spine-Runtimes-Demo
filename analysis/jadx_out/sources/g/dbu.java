package g;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzadv;
import com.google.android.gms.internal.ads.zzadw;
import com.google.android.gms.internal.ads.zzadx;
import com.google.android.gms.internal.ads.zzakg;
import com.google.android.gms.internal.ads.zzakh;
import com.google.android.gms.internal.ads.zzaki;
import com.google.android.gms.internal.ads.zzbg;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzdg;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzn;
import g.ada;
import g.dbu;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class dbu implements zzadx {

    /* renamed from: a, reason: collision with root package name */
    public zzad f13934a;

    /* renamed from: d, reason: collision with root package name */
    public final zzadx f13937d;

    /* renamed from: f, reason: collision with root package name */
    public final zzakg f13939f;
    public zzaki h;

    /* renamed from: b, reason: collision with root package name */
    public int f13935b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f13936c = 0;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f13938e = zzen.zzf;

    /* renamed from: g, reason: collision with root package name */
    public final zzed f13940g = new zzed();

    public dbu(zzadx zzadxVar, zzakg zzakgVar) {
        this.f13937d = zzadxVar;
        this.f13939f = zzakgVar;
    }

    public final void i(int i) {
        int length = this.f13938e.length;
        int i2 = this.f13936c;
        if (length - i2 >= i) {
            return;
        }
        int i3 = i2 - this.f13935b;
        int max = Math.max(i3 + i3, i + i3);
        byte[] bArr = this.f13938e;
        byte[] bArr2 = max <= bArr.length ? bArr : new byte[max];
        System.arraycopy(bArr, this.f13935b, bArr2, 0, i3);
        this.f13935b = 0;
        this.f13936c = i3;
        this.f13938e = bArr2;
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final /* synthetic */ int zzf(zzn zznVar, int i, boolean z) {
        return zzadv.zza(this, zznVar, i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final int zzg(zzn zznVar, int i, boolean z, int i2) {
        if (this.h == null) {
            return this.f13937d.zzg(zznVar, i, z, 0);
        }
        i(i);
        int zza = zznVar.zza(this.f13938e, this.f13936c, i);
        if (zza != -1) {
            this.f13936c += zza;
            return zza;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final void zzl(zzad zzadVar) {
        String str = zzadVar.zzo;
        str.getClass();
        zzdb.zzd(zzbg.zzb(str) == 3);
        boolean equals = zzadVar.equals(this.f13934a);
        zzakg zzakgVar = this.f13939f;
        if (!equals) {
            this.f13934a = zzadVar;
            this.h = zzakgVar.zzc(zzadVar) ? zzakgVar.zzb(zzadVar) : null;
        }
        zzaki zzakiVar = this.h;
        zzadx zzadxVar = this.f13937d;
        if (zzakiVar == null) {
            zzadxVar.zzl(zzadVar);
            return;
        }
        zzab zzb = zzadVar.zzb();
        zzb.zzZ("application/x-media3-cues");
        zzb.zzA(zzadVar.zzo);
        zzb.zzad(Long.MAX_VALUE);
        zzb.zzE(zzakgVar.zza(zzadVar));
        zzadxVar.zzl(zzb.zzaf());
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final /* synthetic */ void zzq(zzed zzedVar, int i) {
        zzadv.zzb(this, zzedVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final void zzr(zzed zzedVar, int i, int i2) {
        if (this.h == null) {
            this.f13937d.zzr(zzedVar, i, i2);
            return;
        }
        i(i);
        zzedVar.zzH(this.f13938e, this.f13936c, i);
        this.f13936c += i;
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final void zzs(final long j, final int i, int i2, int i3, zzadw zzadwVar) {
        if (this.h == null) {
            this.f13937d.zzs(j, i, i2, i3, zzadwVar);
            return;
        }
        zzdb.zze(zzadwVar == null, "DRM on subtitles is not supported");
        int i4 = (this.f13936c - i3) - i2;
        this.h.zza(this.f13938e, i4, i2, zzakh.zza(), new zzdg() { // from class: com.google.android.gms.internal.ads.zzakk
            @Override // com.google.android.gms.internal.ads.zzdg
            public final void zza(Object obj) {
                dbu dbuVar = dbu.this;
                long j2 = j;
                int i5 = i;
                zzaka zzakaVar = (zzaka) obj;
                zzed zzedVar = dbuVar.f13940g;
                zzdb.zzb(dbuVar.f13934a);
                zzfzo zzfzoVar = zzakaVar.zza;
                long j3 = zzakaVar.zzc;
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(zzfzoVar.size());
                Iterator<E> it = zzfzoVar.iterator();
                while (it.hasNext()) {
                    arrayList.add(((zzct) it.next()).zza());
                }
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList("c", arrayList);
                bundle.putLong(ada.COLUMN_DOMAIN, j3);
                Parcel obtain = Parcel.obtain();
                obtain.writeBundle(bundle);
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                int length = marshall.length;
                zzedVar.zzJ(marshall, length);
                dbuVar.f13937d.zzq(zzedVar, length);
                long j4 = zzakaVar.zzb;
                if (j4 == -9223372036854775807L) {
                    zzdb.zzf(dbuVar.f13934a.zzt == Long.MAX_VALUE);
                } else {
                    long j5 = dbuVar.f13934a.zzt;
                    j2 = j5 == Long.MAX_VALUE ? j2 + j4 : j4 + j5;
                }
                dbuVar.f13937d.zzs(j2, i5, length, 0, null);
            }
        });
        int i5 = i4 + i2;
        this.f13935b = i5;
        if (i5 == this.f13936c) {
            this.f13935b = 0;
            this.f13936c = 0;
        }
    }
}
