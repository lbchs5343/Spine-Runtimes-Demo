package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.gtb;
import j$.util.DesugarTimeZone;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;

/* loaded from: classes3.dex */
public class zzaqe implements zzapi {

    /* renamed from: a, reason: collision with root package name */
    public final zzaqd f4459a;

    /* renamed from: b, reason: collision with root package name */
    public final zzaqg f4460b;

    public zzaqe(zzaqd zzaqdVar) {
        zzaqg zzaqgVar = new zzaqg(4096);
        this.f4459a = zzaqdVar;
        this.f4460b = zzaqgVar;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:55|(9:57|58|59|60|(11:61|62|63|(2:65|66)(1:80)|67|68|69|70|71|72|74)|81|83|84|85)(1:132)|86|87|(3:(4:92|93|94|(1:1)(5:98|103|104|105|106))|94|(2:96|107)(1:110))|113|(1:115)(1:121)|116|117|118|119|93) */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x0200, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0201, code lost:
    
        r19 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x020b, code lost:
    
        throw new java.io.IOException();
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0227  */
    @Override // com.google.android.gms.internal.ads.zzapi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzapl zza(zzapp zzappVar) throws zzapy {
        char c2;
        char c3;
        byte[] bArr;
        zzaqn zzaqnVar;
        gtb gtbVar;
        String str;
        int zzb;
        Map map;
        char c4;
        byte[] bArr2;
        long elapsedRealtime;
        byte[] bArr3;
        long elapsedRealtime2 = SystemClock.elapsedRealtime();
        while (true) {
            try {
                zzaoy zzd = zzappVar.zzd();
                if (zzd == null) {
                    map = Collections.EMPTY_MAP;
                    c2 = 1;
                } else {
                    HashMap hashMap = new HashMap();
                    String str2 = zzd.zzb;
                    if (str2 != null) {
                        hashMap.put("If-None-Match", str2);
                    }
                    long j = zzd.zzd;
                    if (j > 0) {
                        c2 = 1;
                        try {
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
                            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("GMT"));
                            hashMap.put("If-Modified-Since", simpleDateFormat.format(new Date(j)));
                        } catch (IOException e2) {
                            e = e2;
                            c3 = 0;
                            zzaqnVar = null;
                            bArr = null;
                            if (!(e instanceof SocketTimeoutException)) {
                                gtbVar = new gtb("socket", 14, new zzapx());
                            } else {
                                if (e instanceof MalformedURLException) {
                                    throw new RuntimeException("Bad URL ".concat(String.valueOf(zzappVar.zzk())), e);
                                }
                                if (zzaqnVar == null) {
                                    throw new zzapm(e);
                                }
                                int zzb2 = zzaqnVar.zzb();
                                Integer valueOf = Integer.valueOf(zzb2);
                                String zzk = zzappVar.zzk();
                                Object[] objArr = new Object[2];
                                objArr[c3] = valueOf;
                                objArr[c2] = zzk;
                                zzaqb.zzb("Unexpected response code %d for %s", objArr);
                                if (bArr != null) {
                                    zzapl zzaplVar = new zzapl(zzb2, bArr, false, SystemClock.elapsedRealtime() - elapsedRealtime2, zzaqnVar.zzd());
                                    if (zzb2 != 401 && zzb2 != 403) {
                                        if (zzb2 < 400 || zzb2 > 499) {
                                            throw new zzapw(zzaplVar);
                                        }
                                        throw new zzapc(zzaplVar);
                                    }
                                    gtbVar = new gtb("auth", 14, new zzaox(zzaplVar));
                                } else {
                                    gtbVar = new gtb("network", 14, new zzapk());
                                }
                            }
                            str = (String) gtbVar.f18714d;
                            zzapd zzy = zzappVar.zzy();
                            zzb = zzappVar.zzb();
                            try {
                                zzy.zzc((zzapy) gtbVar.f18712b);
                                zzappVar.zzm(str + "-retry [timeout=" + zzb + "]");
                            } catch (zzapy e3) {
                                zzappVar.zzm(str + "-timeout-giveup [timeout=" + zzb + "]");
                                throw e3;
                            }
                        }
                    } else {
                        c2 = 1;
                    }
                    map = hashMap;
                }
                zzaqn zza = this.f4459a.zza(zzappVar, map);
                try {
                    int zzb3 = zza.zzb();
                    List zzd2 = zza.zzd();
                    if (zzb3 == 304) {
                        long elapsedRealtime3 = SystemClock.elapsedRealtime() - elapsedRealtime2;
                        zzaoy zzd3 = zzappVar.zzd();
                        if (zzd3 == null) {
                            return new zzapl(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_THRESHOLD, (byte[]) null, true, elapsedRealtime3, zzd2);
                        }
                        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                        if (!zzd2.isEmpty()) {
                            Iterator it = zzd2.iterator();
                            while (it.hasNext()) {
                                treeSet.add(((zzaph) it.next()).zza());
                            }
                        }
                        ArrayList arrayList = new ArrayList(zzd2);
                        List list = zzd3.zzh;
                        if (list != null) {
                            if (!list.isEmpty()) {
                                for (zzaph zzaphVar : zzd3.zzh) {
                                    if (!treeSet.contains(zzaphVar.zza())) {
                                        arrayList.add(zzaphVar);
                                    }
                                }
                            }
                        } else if (!zzd3.zzg.isEmpty()) {
                            for (Map.Entry entry : zzd3.zzg.entrySet()) {
                                if (!treeSet.contains(entry.getKey())) {
                                    arrayList.add(new zzaph((String) entry.getKey(), (String) entry.getValue()));
                                }
                            }
                        }
                        return new zzapl(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_THRESHOLD, zzd3.zza, true, elapsedRealtime3, (List) arrayList);
                    }
                    InputStream zzc = zza.zzc();
                    if (zzc != null) {
                        int zza2 = zza.zza();
                        zzaqg zzaqgVar = this.f4460b;
                        zzaqt zzaqtVar = new zzaqt(zzaqgVar, zza2);
                        try {
                            bArr3 = zzaqgVar.zzb(1024);
                        } catch (Throwable th) {
                            th = th;
                            bArr3 = null;
                        }
                        while (true) {
                            try {
                                int read = zzc.read(bArr3);
                                c4 = 2;
                                if (read == -1) {
                                    break;
                                }
                                try {
                                    zzaqtVar.write(bArr3, 0, read);
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                                th = th2;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                            try {
                                zzc.close();
                            } catch (IOException unused) {
                                zzaqb.zzd("Error occurred when closing InputStream", new Object[0]);
                            }
                            zzaqgVar.zza(bArr3);
                            zzaqtVar.close();
                            throw th;
                        }
                        bArr2 = zzaqtVar.toByteArray();
                        try {
                            try {
                                zzc.close();
                            } catch (IOException unused2) {
                                zzaqb.zzd("Error occurred when closing InputStream", new Object[0]);
                            }
                            zzaqgVar.zza(bArr3);
                            zzaqtVar.close();
                        } catch (IOException e4) {
                            e = e4;
                            c3 = 0;
                            zzaqnVar = zza;
                            bArr = null;
                            if (!(e instanceof SocketTimeoutException)) {
                            }
                            str = (String) gtbVar.f18714d;
                            zzapd zzy2 = zzappVar.zzy();
                            zzb = zzappVar.zzb();
                            zzy2.zzc((zzapy) gtbVar.f18712b);
                            zzappVar.zzm(str + "-retry [timeout=" + zzb + "]");
                        }
                    } else {
                        c4 = 2;
                        bArr2 = new byte[0];
                    }
                    try {
                        elapsedRealtime = SystemClock.elapsedRealtime() - elapsedRealtime2;
                    } catch (IOException e5) {
                        e = e5;
                        bArr = bArr2;
                        c3 = 0;
                    }
                    try {
                        if (!zzaqb.zzb && elapsedRealtime <= 3000) {
                            c3 = 0;
                            if (zzb3 < 200 || zzb3 > 299) {
                                break;
                            }
                            return new zzapl(zzb3, bArr2, false, SystemClock.elapsedRealtime() - elapsedRealtime2, zzd2);
                        }
                        if (zzb3 < 200) {
                            break;
                        }
                        break;
                    } catch (IOException e6) {
                        e = e6;
                        zzaqnVar = zza;
                        if (!(e instanceof SocketTimeoutException)) {
                        }
                        str = (String) gtbVar.f18714d;
                        zzapd zzy22 = zzappVar.zzy();
                        zzb = zzappVar.zzb();
                        zzy22.zzc((zzapy) gtbVar.f18712b);
                        zzappVar.zzm(str + "-retry [timeout=" + zzb + "]");
                    }
                    Long valueOf2 = Long.valueOf(elapsedRealtime);
                    String valueOf3 = bArr2 != null ? Integer.valueOf(bArr2.length) : "null";
                    Integer valueOf4 = Integer.valueOf(zzb3);
                    Integer valueOf5 = Integer.valueOf(zzappVar.zzy().zza());
                    c3 = 0;
                    Object[] objArr2 = new Object[5];
                    objArr2[0] = zzappVar;
                    objArr2[c2] = valueOf2;
                    objArr2[c4] = valueOf3;
                    objArr2[3] = valueOf4;
                    objArr2[4] = valueOf5;
                    zzaqb.zza("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr2);
                } catch (IOException e7) {
                    e = e7;
                }
            } catch (IOException e8) {
                e = e8;
                c2 = 1;
            }
            zzappVar.zzm(str + "-retry [timeout=" + zzb + "]");
        }
    }
}
