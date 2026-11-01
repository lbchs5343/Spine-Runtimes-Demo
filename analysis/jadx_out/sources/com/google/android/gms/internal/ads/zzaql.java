package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderConfigure;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.aoy;
import g.api;
import g.awf;
import g.egj;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class zzaql implements zzaoz {

    /* renamed from: a, reason: collision with root package name */
    public final int f4465a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f4466b;

    /* renamed from: c, reason: collision with root package name */
    public long f4467c;

    /* renamed from: d, reason: collision with root package name */
    public final zzaqk f4468d;

    public zzaql(zzaqk zzaqkVar, int i) {
        this.f4466b = new LinkedHashMap(16, 0.75f, true);
        this.f4467c = 0L;
        this.f4468d = zzaqkVar;
        this.f4465a = AVMDLDataLoaderConfigure.DEFAULT_MAX_FACTORY_MEMORY_SIZE;
    }

    public zzaql(File file, int i) {
        this.f4466b = new LinkedHashMap(16, 0.75f, true);
        this.f4467c = 0L;
        this.f4468d = new aoy(file);
        this.f4465a = 20971520;
    }

    public static int e(api apiVar) {
        int read = apiVar.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    public static void f(BufferedOutputStream bufferedOutputStream, int i) {
        bufferedOutputStream.write(i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bufferedOutputStream.write((i >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bufferedOutputStream.write((i >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bufferedOutputStream.write((i >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
    }

    public static void g(BufferedOutputStream bufferedOutputStream, long j) {
        bufferedOutputStream.write((byte) j);
        bufferedOutputStream.write((byte) (j >>> 8));
        bufferedOutputStream.write((byte) (j >>> 16));
        bufferedOutputStream.write((byte) (j >>> 24));
        bufferedOutputStream.write((byte) (j >>> 32));
        bufferedOutputStream.write((byte) (j >>> 40));
        bufferedOutputStream.write((byte) (j >>> 48));
        bufferedOutputStream.write((byte) (j >>> 56));
    }

    public static int h(api apiVar) {
        return (e(apiVar) << 24) | e(apiVar) | (e(apiVar) << 8) | (e(apiVar) << 16);
    }

    public static void i(BufferedOutputStream bufferedOutputStream, String str) {
        byte[] bytes = str.getBytes("UTF-8");
        int length = bytes.length;
        g(bufferedOutputStream, length);
        bufferedOutputStream.write(bytes, 0, length);
    }

    public static long j(api apiVar) {
        return (e(apiVar) & 255) | ((e(apiVar) & 255) << 8) | ((e(apiVar) & 255) << 16) | ((e(apiVar) & 255) << 24) | ((e(apiVar) & 255) << 32) | ((e(apiVar) & 255) << 40) | ((e(apiVar) & 255) << 48) | ((e(apiVar) & 255) << 56);
    }

    public static final String k(String str) {
        int length = str.length() / 2;
        return String.valueOf(String.valueOf(str.substring(0, length).hashCode())).concat(String.valueOf(String.valueOf(str.substring(length).hashCode())));
    }

    public static String l(api apiVar) {
        return new String(m(apiVar, j(apiVar)), "UTF-8");
    }

    public static byte[] m(api apiVar, long j) {
        long j2 = apiVar.f10626c - apiVar.f10624a;
        if (j >= 0 && j <= j2) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(apiVar).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder l = awf.l(j, "streamToBytes length=", ", maxLength=");
        l.append(j2);
        throw new IOException(l.toString());
    }

    public final void n(String str, egj egjVar) {
        LinkedHashMap linkedHashMap = this.f4466b;
        if (linkedHashMap.containsKey(str)) {
            this.f4467c = (egjVar.f15488d - ((egj) linkedHashMap.get(str)).f15488d) + this.f4467c;
        } else {
            this.f4467c += egjVar.f15488d;
        }
        linkedHashMap.put(str, egjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaoz
    public final synchronized zzaoy zza(String str) {
        egj egjVar = (egj) this.f4466b.get(str);
        if (egjVar == null) {
            return null;
        }
        File zzg = zzg(str);
        try {
            api apiVar = new api(new BufferedInputStream(new FileInputStream(zzg)), zzg.length());
            try {
                egj i = egj.i(apiVar);
                if (!TextUtils.equals(str, i.f15490f)) {
                    zzaqb.zza("%s: key=%s, found=%s", zzg.getAbsolutePath(), str, i.f15490f);
                    egj egjVar2 = (egj) this.f4466b.remove(str);
                    if (egjVar2 != null) {
                        this.f4467c -= egjVar2.f15488d;
                    }
                    return null;
                }
                byte[] m = m(apiVar, apiVar.f10626c - apiVar.f10624a);
                zzaoy zzaoyVar = new zzaoy();
                zzaoyVar.zza = m;
                zzaoyVar.zzb = egjVar.f15491g;
                zzaoyVar.zzc = egjVar.f15486b;
                zzaoyVar.zzd = egjVar.f15487c;
                zzaoyVar.zze = egjVar.f15489e;
                zzaoyVar.zzf = egjVar.h;
                List<zzaph> list = egjVar.f15485a;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (zzaph zzaphVar : list) {
                    treeMap.put(zzaphVar.zza(), zzaphVar.zzb());
                }
                zzaoyVar.zzg = treeMap;
                zzaoyVar.zzh = Collections.unmodifiableList(egjVar.f15485a);
                return zzaoyVar;
            } finally {
                apiVar.close();
            }
        } catch (IOException e2) {
            zzaqb.zza("%s: %s", zzg.getAbsolutePath(), e2.toString());
            zzi(str);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaoz
    public final synchronized void zzb() {
        File zza = this.f4468d.zza();
        if (zza.exists()) {
            File[] listFiles = zza.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    try {
                        long length = file.length();
                        api apiVar = new api(new BufferedInputStream(new FileInputStream(file)), length);
                        try {
                            egj i = egj.i(apiVar);
                            i.f15488d = length;
                            n(i.f15490f, i);
                            apiVar.close();
                        } catch (Throwable th) {
                            apiVar.close();
                            throw th;
                        }
                    } catch (IOException unused) {
                        file.delete();
                    }
                }
            }
        } else if (!zza.mkdirs()) {
            zzaqb.zzb("Unable to create cache dir %s", zza.getAbsolutePath());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaoz
    public final synchronized void zzc(String str, boolean z) {
        zzaoy zza = zza(str);
        if (zza != null) {
            zza.zzf = 0L;
            zza.zze = 0L;
            zzd(str, zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaoz
    public final synchronized void zzd(String str, zzaoy zzaoyVar) {
        long j;
        float f2;
        try {
            long j2 = this.f4467c;
            int length = zzaoyVar.zza.length;
            long j3 = j2 + length;
            int i = this.f4465a;
            if (j3 <= i || length <= i * 0.9f) {
                File zzg = zzg(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(zzg));
                    egj egjVar = new egj(str, zzaoyVar);
                    try {
                        f(bufferedOutputStream, 538247942);
                        i(bufferedOutputStream, str);
                        String str2 = egjVar.f15491g;
                        if (str2 == null) {
                            str2 = "";
                        }
                        i(bufferedOutputStream, str2);
                        g(bufferedOutputStream, egjVar.f15486b);
                        g(bufferedOutputStream, egjVar.f15487c);
                        g(bufferedOutputStream, egjVar.f15489e);
                        g(bufferedOutputStream, egjVar.h);
                        List<zzaph> list = egjVar.f15485a;
                        if (list != null) {
                            f(bufferedOutputStream, list.size());
                            for (zzaph zzaphVar : list) {
                                i(bufferedOutputStream, zzaphVar.zza());
                                i(bufferedOutputStream, zzaphVar.zzb());
                            }
                        } else {
                            f(bufferedOutputStream, 0);
                        }
                        bufferedOutputStream.flush();
                        bufferedOutputStream.write(zzaoyVar.zza);
                        bufferedOutputStream.close();
                        egjVar.f15488d = zzg.length();
                        n(str, egjVar);
                        if (this.f4467c >= this.f4465a) {
                            if (zzaqb.zzb) {
                                zzaqb.zzd("Pruning old cache entries.", new Object[0]);
                            }
                            long j4 = this.f4467c;
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            Iterator it = this.f4466b.entrySet().iterator();
                            int i2 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    j = elapsedRealtime;
                                    break;
                                }
                                egj egjVar2 = (egj) ((Map.Entry) it.next()).getValue();
                                if (zzg(egjVar2.f15490f).delete()) {
                                    j = elapsedRealtime;
                                    f2 = 0.9f;
                                    this.f4467c -= egjVar2.f15488d;
                                } else {
                                    j = elapsedRealtime;
                                    f2 = 0.9f;
                                    String str3 = egjVar2.f15490f;
                                    zzaqb.zza("Could not delete cache entry for key=%s, filename=%s", str3, k(str3));
                                }
                                it.remove();
                                i2++;
                                if (this.f4467c < this.f4465a * f2) {
                                    break;
                                } else {
                                    elapsedRealtime = j;
                                }
                            }
                            if (zzaqb.zzb) {
                                zzaqb.zzd("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.f4467c - j4), Long.valueOf(SystemClock.elapsedRealtime() - j));
                            }
                        }
                    } catch (IOException e2) {
                        zzaqb.zza("%s", e2.toString());
                        bufferedOutputStream.close();
                        zzaqb.zza("Failed to write header for %s", zzg.getAbsolutePath());
                        throw new IOException();
                    }
                } catch (IOException unused) {
                    if (!zzg.delete()) {
                        zzaqb.zza("Could not clean up file %s", zzg.getAbsolutePath());
                    }
                    if (!this.f4468d.zza().exists()) {
                        zzaqb.zza("Re-initializing cache after external clearing.", new Object[0]);
                        this.f4466b.clear();
                        this.f4467c = 0L;
                        zzb();
                    }
                }
            }
        } finally {
        }
    }

    public final File zzg(String str) {
        return new File(this.f4468d.zza(), k(str));
    }

    public final synchronized void zzi(String str) {
        boolean delete = zzg(str).delete();
        egj egjVar = (egj) this.f4466b.remove(str);
        if (egjVar != null) {
            this.f4467c -= egjVar.f15488d;
        }
        if (delete) {
            return;
        }
        zzaqb.zza("Could not delete cache entry for key=%s, filename=%s", str, k(str));
    }
}
