package g;

import android.database.sqlite.SQLiteException;
import android.media.MediaCodec;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.gms.internal.ads.zzdfk;
import com.google.android.gms.internal.ads.zzfbl;
import com.google.android.gms.internal.ads.zzfhl;
import com.google.android.gms.internal.ads.zzfhw;
import com.google.android.gms.internal.ads.zzfhx;
import com.google.android.gms.internal.ads.zzgwk;
import com.google.android.gms.internal.ads.zzhj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class bgb implements bmo, zzfhw, bjz, btm, alf, csw {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11498b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f11499c;

    public /* synthetic */ bgb(int i, Object obj) {
        this.f11498b = i;
        this.f11499c = obj;
    }

    public bgb(bsz bszVar, String str) {
        this.f11498b = 5;
        this.f11499c = bszVar;
    }

    private final void h() {
    }

    private final void i() {
    }

    @Override // g.alf
    public void a(String str, int i, Throwable th, byte[] bArr, Map map) {
        ggz ggzVar;
        long longValue;
        bsz bszVar = (bsz) this.f11499c;
        bszVar.zzaz()._e();
        bszVar.bi();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                bszVar.f12158d = false;
                bszVar.bd();
                throw th2;
            }
        }
        ArrayList arrayList = bszVar.w;
        ckd.k(arrayList);
        bszVar.w = null;
        if (i != 200) {
            if (i == 204) {
                i = MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_CODE;
            }
            bszVar.zzay().f11519c.e(Integer.valueOf(i), "Network upload failed. Will retry later. code, error", th);
            fou fouVar = bszVar.y.f9873g;
            ((czz) bszVar.zzav()).getClass();
            fouVar.g(System.currentTimeMillis());
            if (i != 503 || i == 429) {
                fou fouVar2 = bszVar.y.f9871c;
                ((czz) bszVar.zzav()).getClass();
                fouVar2.g(System.currentTimeMillis());
            }
            ggz ggzVar2 = bszVar.l;
            bsz.ag(ggzVar2);
            ggzVar2.aw(arrayList);
            bszVar.ar();
            bszVar.f12158d = false;
            bszVar.bd();
        }
        if (th == null) {
            try {
                fou fouVar3 = bszVar.y.f9870b;
                ((czz) bszVar.zzav()).getClass();
                fouVar3.g(System.currentTimeMillis());
                bszVar.y.f9873g.g(0L);
                bszVar.ar();
                bszVar.zzay().f11519c.e(Integer.valueOf(i), "Successful upload. Got network response. code, size", Integer.valueOf(bArr.length));
                ggz ggzVar3 = bszVar.l;
                bsz.ag(ggzVar3);
                ggzVar3.ap();
                try {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        Long l = (Long) it.next();
                        try {
                            ggzVar = bszVar.l;
                            bsz.ag(ggzVar);
                            longValue = l.longValue();
                            ggzVar._e();
                            ggzVar.n();
                            try {
                            } catch (SQLiteException e2) {
                                bgm bgmVar = ((cyg) ggzVar.z).z;
                                cyg.ak(bgmVar);
                                bgmVar.f11518b.i(e2, "Failed to delete a bundle in a queue table");
                                throw e2;
                            }
                        } catch (SQLiteException e3) {
                            ArrayList arrayList2 = bszVar.f12160f;
                            if (arrayList2 == null || !arrayList2.contains(l)) {
                                throw e3;
                            }
                        }
                        if (ggzVar.bg().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                            throw new SQLiteException("Deleted fewer rows from queue than expected");
                        }
                    }
                    ggz ggzVar4 = bszVar.l;
                    bsz.ag(ggzVar4);
                    ggzVar4.av();
                    ggz ggzVar5 = bszVar.l;
                    bsz.ag(ggzVar5);
                    ggzVar5.an();
                    bszVar.f12160f = null;
                    fit fitVar = bszVar.z;
                    bsz.ag(fitVar);
                    if (fitVar.aw() && bszVar.bl()) {
                        bszVar.bf();
                    } else {
                        bszVar.v = -1L;
                        bszVar.ar();
                    }
                    bszVar.h = 0L;
                } catch (Throwable th3) {
                    ggz ggzVar6 = bszVar.l;
                    bsz.ag(ggzVar6);
                    ggzVar6.an();
                    throw th3;
                }
            } catch (SQLiteException e4) {
                bszVar.zzay().f11518b.i(e4, "Database error while trying to delete uploaded bundles");
                ((czz) bszVar.zzav()).getClass();
                bszVar.h = SystemClock.elapsedRealtime();
                bszVar.zzay().f11519c.i(Long.valueOf(bszVar.h), "Disable upload, time");
            }
            bszVar.f12158d = false;
            bszVar.bd();
        }
        bszVar.zzay().f11519c.e(Integer.valueOf(i), "Network upload failed. Will retry later. code, error", th);
        fou fouVar4 = bszVar.y.f9873g;
        ((czz) bszVar.zzav()).getClass();
        fouVar4.g(System.currentTimeMillis());
        if (i != 503) {
        }
        fou fouVar22 = bszVar.y.f9871c;
        ((czz) bszVar.zzav()).getClass();
        fouVar22.g(System.currentTimeMillis());
        ggz ggzVar22 = bszVar.l;
        bsz.ag(ggzVar22);
        ggzVar22.aw(arrayList);
        bszVar.ar();
        bszVar.f12158d = false;
        bszVar.bd();
    }

    @Override // g.csw
    public void d(int i, zzhj zzhjVar, long j) {
        ((MediaCodec) this.f11499c).queueSecureInputBuffer(i, 0, zzhjVar.zza(), j, 0);
    }

    public void e(int i, String str, List list, boolean z, boolean z2) {
        dvb dvbVar;
        cyg cygVar = (cyg) ((dqu) this.f11499c).z;
        int i2 = i - 1;
        if (i2 == 0) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            dvbVar = bgmVar.o;
        } else if (i2 != 1) {
            if (i2 == 3) {
                bgm bgmVar2 = cygVar.z;
                cyg.ak(bgmVar2);
                dvbVar = bgmVar2.f11519c;
            } else if (i2 != 4) {
                bgm bgmVar3 = cygVar.z;
                cyg.ak(bgmVar3);
                dvbVar = bgmVar3.p;
            } else if (z) {
                bgm bgmVar4 = cygVar.z;
                cyg.ak(bgmVar4);
                dvbVar = bgmVar4.j;
            } else if (z2) {
                bgm bgmVar5 = cygVar.z;
                cyg.ak(bgmVar5);
                dvbVar = bgmVar5.f11520g;
            } else {
                bgm bgmVar6 = cygVar.z;
                cyg.ak(bgmVar6);
                dvbVar = bgmVar6.h;
            }
        } else if (z) {
            bgm bgmVar7 = cygVar.z;
            cyg.ak(bgmVar7);
            dvbVar = bgmVar7.f11517a;
        } else if (z2) {
            bgm bgmVar8 = cygVar.z;
            cyg.ak(bgmVar8);
            dvbVar = bgmVar8.f11518b;
        } else {
            bgm bgmVar9 = cygVar.z;
            cyg.ak(bgmVar9);
            dvbVar = bgmVar9.m;
        }
        int size = list.size();
        if (size == 1) {
            dvbVar.i(list.get(0), str);
            return;
        }
        if (size == 2) {
            dvbVar.e(list.get(0), str, list.get(1));
        } else if (size != 3) {
            dvbVar.h(str);
        } else {
            dvbVar.f(str, list.get(0), list.get(1), list.get(2));
        }
    }

    @Override // g.csw
    public void f(Bundle bundle) {
        ((MediaCodec) this.f11499c).setParameters(bundle);
    }

    @Override // g.csw
    public void g(int i, int i2, int i3, long j) {
        ((MediaCodec) this.f11499c).queueInputBuffer(i, 0, i2, j, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzfhw
    public dcy zza(zzfhx zzfhxVar) {
        vv vvVar = (vv) zzfhxVar;
        return ((zzfbl) this.f11499c).zzb(vvVar.f20196e, vvVar.f20194c, null);
    }

    @Override // g.bjz
    public Object zza(String str) {
        return ((zzgwk) this.f11499c).zza(str, null);
    }

    @Override // g.bmo
    public void zza(View view) {
    }

    @Override // g.btm
    public void zza(String str, Bundle bundle) {
        csp cspVar = (csp) this.f11499c;
        if (!TextUtils.isEmpty(str)) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        ((cyg) cspVar.z).f13743ab.getClass();
        cspVar.at(LiveConfigKey.AUTO, "_err", bundle, true, true, System.currentTimeMillis());
    }

    @Override // g.bmo
    public void zzb() {
        switch (this.f11498b) {
            case 0:
                ((zzdfk) this.f11499c).zzb().onAdClicked();
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfhw
    public void zzb(zzfhl zzfhlVar) {
        zzfhlVar.zza = ((zzfbl) this.f11499c).zza();
    }

    @Override // g.bmo
    public void zzc() {
        switch (this.f11498b) {
            case 0:
                zzdfk zzdfkVar = (zzdfk) this.f11499c;
                zzdfkVar.zzc().zza();
                zzdfkVar.zzf().zza();
                break;
        }
    }

    @Override // g.csw
    public void zzg() {
    }

    @Override // g.csw
    public void zzh() {
    }
}
