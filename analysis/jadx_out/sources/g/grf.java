package g;

import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzacg;
import com.google.android.gms.internal.ads.zzacr;
import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzacu;
import com.google.android.gms.internal.ads.zzadn;
import com.google.android.gms.internal.ads.zzadp;
import com.google.android.gms.internal.ads.zzadx;
import com.google.android.gms.internal.ads.zzafg;
import com.google.android.gms.internal.ads.zzafk;
import com.google.android.gms.internal.ads.zzagz;
import com.google.android.gms.internal.ads.zzaiy;
import com.google.android.gms.internal.ads.zzakg;
import com.google.android.gms.internal.ads.zzbd;
import com.google.android.gms.internal.ads.zzbh;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzeo;
import com.google.android.gms.internal.ads.zzfzo;
import java.io.StringReader;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes3.dex */
public final class grf implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public zzacs f18631a;

    /* renamed from: b, reason: collision with root package name */
    public int f18632b;

    /* renamed from: c, reason: collision with root package name */
    public int f18633c;

    /* renamed from: d, reason: collision with root package name */
    public final zzed f18634d = new zzed(6);

    /* renamed from: e, reason: collision with root package name */
    public long f18635e = -1;

    /* renamed from: f, reason: collision with root package name */
    public eel f18636f;

    /* renamed from: g, reason: collision with root package name */
    public zzacu f18637g;
    public zzaiy h;
    public int i;
    public zzagz j;

    public final int k(zzacs zzacsVar) {
        zzed zzedVar = this.f18634d;
        zzedVar.zzI(2);
        ((zzacg) zzacsVar).zzm(zzedVar.zzN(), 0, 2, false);
        return zzedVar.zzq();
    }

    public final void l() {
        zzacu zzacuVar = this.f18637g;
        zzacuVar.getClass();
        zzacuVar.zzD();
        this.f18637g.zzO(new zzadp(-9223372036854775807L, 0L));
        this.i = 6;
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x0184, code lost:
    
        if (r7 == (-1)) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0186, code lost:
    
        r7 = -9223372036854775807L;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:143:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01fc  */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) {
        String zzy;
        long j;
        fmk fmkVar;
        long j2;
        XmlPullParser newPullParser;
        int i = this.i;
        zzed zzedVar = this.f18634d;
        if (i == 0) {
            zzedVar.zzI(2);
            zzacsVar.zzi(zzedVar.zzN(), 0, 2);
            int zzq = zzedVar.zzq();
            this.f18632b = zzq;
            if (zzq == 65498) {
                if (this.f18635e != -1) {
                    this.i = 4;
                    return 0;
                }
                l();
                return 0;
            }
            if ((zzq < 65488 || zzq > 65497) && zzq != 65281) {
                this.i = 1;
            }
            return 0;
        }
        if (i == 1) {
            zzedVar.zzI(2);
            zzacsVar.zzi(zzedVar.zzN(), 0, 2);
            this.f18633c = zzedVar.zzq() - 2;
            this.i = 2;
            return 0;
        }
        if (i != 2) {
            if (i != 4) {
                if (i != 5) {
                    if (i == 6) {
                        return -1;
                    }
                    throw new IllegalStateException();
                }
                if (this.f18636f == null || zzacsVar != this.f18631a) {
                    this.f18631a = zzacsVar;
                    this.f18636f = new eel(zzacsVar, this.f18635e);
                }
                zzaiy zzaiyVar = this.h;
                zzaiyVar.getClass();
                int zzb = zzaiyVar.zzb(this.f18636f, zzadnVar);
                if (zzb == 1) {
                    zzadnVar.zza += this.f18635e;
                }
                return zzb;
            }
            long zzf = zzacsVar.zzf();
            long j3 = this.f18635e;
            if (zzf != j3) {
                zzadnVar.zza = j3;
                return 1;
            }
            if (!zzacsVar.zzm(zzedVar.zzN(), 0, 1, true)) {
                l();
                return 0;
            }
            zzacsVar.zzj();
            if (this.h == null) {
                this.h = new zzaiy(zzakg.zza, 8);
            }
            eel eelVar = new eel(zzacsVar, this.f18635e);
            this.f18636f = eelVar;
            if (!this.h.zzi(eelVar)) {
                l();
                return 0;
            }
            zzaiy zzaiyVar2 = this.h;
            long j4 = this.f18635e;
            zzacu zzacuVar = this.f18637g;
            zzacuVar.getClass();
            zzaiyVar2.zze(new zzafk(j4, zzacuVar));
            zzagz zzagzVar = this.j;
            zzagzVar.getClass();
            zzacu zzacuVar2 = this.f18637g;
            zzacuVar2.getClass();
            zzadx zzw = zzacuVar2.zzw(1024, 4);
            zzab zzabVar = new zzab();
            zzabVar.zzC("image/jpeg");
            zzabVar.zzS(new zzbd(-9223372036854775807L, zzagzVar));
            zzw.zzl(zzabVar.zzaf());
            this.i = 5;
            return 0;
        }
        if (this.f18632b == 65505) {
            zzed zzedVar2 = new zzed(this.f18633c);
            zzacsVar.zzi(zzedVar2.zzN(), 0, this.f18633c);
            if (this.j == null && "http://ns.adobe.com/xap/1.0/".equals(zzedVar2.zzy((char) 0)) && (zzy = zzedVar2.zzy((char) 0)) != null) {
                long zzd = zzacsVar.zzd();
                zzagz zzagzVar2 = null;
                if (zzd != -1) {
                    try {
                        newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                        j = -1;
                        try {
                            newPullParser.setInput(new StringReader(zzy));
                            newPullParser.next();
                        } catch (zzbh | NumberFormatException | XmlPullParserException unused) {
                            zzdt.zzf("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
                            fmkVar = null;
                            if (fmkVar != null) {
                            }
                            this.j = zzagzVar2;
                            if (zzagzVar2 != null) {
                            }
                            this.i = 0;
                            return 0;
                        }
                    } catch (zzbh | NumberFormatException | XmlPullParserException unused2) {
                        j = -1;
                    }
                    if (!zzeo.zzc(newPullParser, "x:xmpmeta")) {
                        throw zzbh.zza("Couldn't find xmp metadata", null);
                    }
                    zzfzo zzn = zzfzo.zzn();
                    long j5 = -9223372036854775807L;
                    loop0: while (true) {
                        newPullParser.next();
                        if (zzeo.zzc(newPullParser, "rdf:Description")) {
                            String[] strArr = acr.h;
                            int i2 = 0;
                            while (true) {
                                if (i2 >= 4) {
                                    break loop0;
                                }
                                String zza = zzeo.zza(newPullParser, strArr[i2]);
                                if (zza == null) {
                                    i2++;
                                } else {
                                    if (Integer.parseInt(zza) != 1) {
                                        break;
                                    }
                                    String[] strArr2 = acr.q;
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 >= 4) {
                                            break;
                                        }
                                        String zza2 = zzeo.zza(newPullParser, strArr2[i3]);
                                        if (zza2 != null) {
                                            j5 = Long.parseLong(zza2);
                                        } else {
                                            i3++;
                                        }
                                    }
                                    String[] strArr3 = acr.f9993f;
                                    int i4 = 0;
                                    while (true) {
                                        if (i4 >= 2) {
                                            zzn = zzfzo.zzn();
                                            break;
                                        }
                                        String zza3 = zzeo.zza(newPullParser, strArr3[i4]);
                                        if (zza3 != null) {
                                            zzn = zzfzo.zzp(new zzafg("image/jpeg", "Primary", 0L, 0L), new zzafg("video/mp4", "MotionPhoto", Long.parseLong(zza3), 0L));
                                            break;
                                        }
                                        i4++;
                                    }
                                }
                            }
                        } else if (zzeo.zzc(newPullParser, "Container:Directory")) {
                            zzn = acr.bg(newPullParser, "Container", "Item");
                        } else if (zzeo.zzc(newPullParser, "GContainer:Directory")) {
                            zzn = acr.bg(newPullParser, "GContainer", "GContainerItem");
                        }
                        if (zzeo.zzb(newPullParser, "x:xmpmeta")) {
                            if (!zzn.isEmpty()) {
                                fmkVar = new fmk(j5, zzn);
                            }
                        }
                    }
                    fmkVar = null;
                    if (fmkVar != null) {
                        zzfzo zzfzoVar = (zzfzo) fmkVar.f17035c;
                        if (zzfzoVar.size() >= 2) {
                            long j6 = j;
                            long j7 = j6;
                            long j8 = j7;
                            long j9 = j8;
                            boolean z = false;
                            for (int size = zzfzoVar.size() - 1; size >= 0; size--) {
                                zzafg zzafgVar = (zzafg) zzfzoVar.get(size);
                                z |= "video/mp4".equals(zzafgVar.zza);
                                if (size == 0) {
                                    zzd -= zzafgVar.zzc;
                                    j2 = 0;
                                } else {
                                    j2 = zzd - zzafgVar.zzb;
                                }
                                long j10 = zzd;
                                zzd = j2;
                                if (z && zzd != j10) {
                                    j9 = j10 - zzd;
                                    j8 = zzd;
                                    z = false;
                                }
                                if (size == 0) {
                                    j7 = j10;
                                }
                                if (size == 0) {
                                    j6 = zzd;
                                }
                            }
                            if (j8 != j && j9 != j && j6 != j && j7 != j) {
                                zzagzVar2 = new zzagz(j6, j7, fmkVar.f17034b, j8, j9);
                            }
                        }
                    }
                }
                this.j = zzagzVar2;
                if (zzagzVar2 != null) {
                    this.f18635e = zzagzVar2.zzd;
                }
            }
        } else {
            zzacsVar.zzk(this.f18633c);
        }
        this.i = 0;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ zzacr zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ List zzd() {
        return zzfzo.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zze(zzacu zzacuVar) {
        this.f18637g = zzacuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        if (j == 0) {
            this.i = 0;
            this.h = null;
        } else if (this.i == 5) {
            zzaiy zzaiyVar = this.h;
            zzaiyVar.getClass();
            zzaiyVar.zzf(j, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) {
        if (k(zzacsVar) != 65496) {
            return false;
        }
        int k = k(zzacsVar);
        this.f18632b = k;
        zzed zzedVar = this.f18634d;
        if (k == 65504) {
            zzedVar.zzI(2);
            zzacg zzacgVar = (zzacg) zzacsVar;
            zzacgVar.zzm(zzedVar.zzN(), 0, 2, false);
            zzacgVar.zzl(zzedVar.zzq() - 2, false);
            k = k(zzacsVar);
            this.f18632b = k;
        }
        if (k == 65505) {
            zzacg zzacgVar2 = (zzacg) zzacsVar;
            zzacgVar2.zzl(2, false);
            zzedVar.zzI(6);
            zzacgVar2.zzm(zzedVar.zzN(), 0, 6, false);
            if (zzedVar.zzu() == 1165519206 && zzedVar.zzq() == 0) {
                return true;
            }
        }
        return false;
    }
}
