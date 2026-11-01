package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import g.agd;
import g.bk;
import g.dzz;
import g.edt;
import g.gra;
import g.mx;
import g.ti;
import g.yw;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzcdu extends zzcdr {
    public static final /* synthetic */ int zzd = 0;

    /* renamed from: g, reason: collision with root package name */
    public final File f5214g;
    public boolean h;

    /* renamed from: f, reason: collision with root package name */
    public static final Set f5213f = Collections.synchronizedSet(new HashSet());

    /* renamed from: e, reason: collision with root package name */
    public static final DecimalFormat f5212e = new DecimalFormat("#,###");

    public zzcdu(zzccf zzccfVar) {
        super(zzccfVar);
        File cacheDir = this.f5210b.getCacheDir();
        if (cacheDir == null) {
            agd.b("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(zzfsc.zza(zzfsb.zza(), cacheDir, "admobVideoStreams"));
        this.f5214g = file;
        if (!file.isDirectory() && !file.mkdirs()) {
            agd.b("Could not create preload cache directory at ".concat(String.valueOf(file.getAbsolutePath())));
            this.f5214g = null;
        } else {
            if (file.setReadable(true, false) && file.setExecutable(true, false)) {
                return;
            }
            agd.b("Could not set cache file permissions at ".concat(String.valueOf(file.getAbsolutePath())));
            this.f5214g = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zzf() {
        this.h = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:74:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x03c9  */
    /* JADX WARN: Type inference failed for: r0v38, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r0v39, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r0v59 */
    /* JADX WARN: Type inference failed for: r13v4, types: [java.nio.channels.ReadableByteChannel] */
    /* JADX WARN: Type inference failed for: r5v15, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.android.gms.internal.ads.zzbcl] */
    /* JADX WARN: Type inference failed for: r7v6, types: [com.google.android.gms.internal.ads.zzbce] */
    @Override // com.google.android.gms.internal.ads.zzcdr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzt(final String str) {
        int i;
        String str2;
        long j;
        String str3;
        int i2;
        int i3;
        int responseCode;
        boolean z;
        FileOutputStream fileOutputStream = null;
        if (this.f5214g == null) {
            zzg(str, null, "noCacheDir", null);
            return false;
        }
        do {
            File file = this.f5214g;
            if (file == null) {
                i = 0;
            } else {
                i = 0;
                for (File file2 : file.listFiles()) {
                    if (!file2.getName().endsWith(".done")) {
                        i++;
                    }
                }
            }
            zzbce zzbceVar = zzbcn.zzp;
            edt edtVar = edt.f15376a;
            if (i > ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue()) {
                File file3 = this.f5214g;
                if (file3 == null) {
                    break;
                }
                long j2 = Long.MAX_VALUE;
                File file4 = null;
                for (File file5 : file3.listFiles()) {
                    if (!file5.getName().endsWith(".done")) {
                        long lastModified = file5.lastModified();
                        if (lastModified < j2) {
                            file4 = file5;
                            j2 = lastModified;
                        }
                    }
                }
                if (file4 != null) {
                    z = file4.delete();
                    File file6 = new File(zzfsc.zza(zzfsb.zza(), this.f5214g, String.valueOf(file4.getName()).concat(".done")));
                    if (file6.isFile()) {
                        z &= file6.delete();
                    }
                } else {
                    z = false;
                }
            } else {
                File file7 = new File(zzfsc.zza(zzfsb.zza(), this.f5214g, mx.m(str, "MD5")));
                File file8 = new File(zzfsc.zza(zzfsb.zza(), this.f5214g, String.valueOf(file7.getName()).concat(".done")));
                if (file7.isFile() && file8.isFile()) {
                    int length = (int) file7.length();
                    agd.c("Stream cache hit at ".concat(String.valueOf(str)));
                    mx.f19684e.post(new bk(this, str, file7.getAbsolutePath(), length));
                    return true;
                }
                String valueOf = String.valueOf(this.f5214g.getAbsolutePath());
                String valueOf2 = String.valueOf(str);
                Set set = f5213f;
                String concat = valueOf.concat(valueOf2);
                synchronized (set) {
                    try {
                        if (set.contains(concat)) {
                            agd.b("Stream cache already in progress at " + str);
                            zzg(str, file7.getAbsolutePath(), "inProgress", null);
                            return false;
                        }
                        set.add(concat);
                        String str4 = AVErrorInfo.ERROR;
                        try {
                            HttpURLConnection zzn = zzfsm.zza().zzn(new zzfsx() { // from class: com.google.android.gms.internal.ads.zzcdt
                                @Override // com.google.android.gms.internal.ads.zzfsx
                                public final URLConnection zza() {
                                    Set set2 = zzcdu.f5213f;
                                    zzcap zzcapVar = ti.f20033a.r;
                                    int intValue = ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzJ)).intValue();
                                    URL url = new URL(str);
                                    int i4 = 0;
                                    while (true) {
                                        i4++;
                                        if (i4 > 20) {
                                            throw new IOException("Too many redirects (20)");
                                        }
                                        URLConnection openConnection = url.openConnection();
                                        openConnection.setConnectTimeout(intValue);
                                        openConnection.setReadTimeout(intValue);
                                        if (!(openConnection instanceof HttpURLConnection)) {
                                            throw new IOException("Invalid protocol.");
                                        }
                                        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
                                        dzz dzzVar = new dzz();
                                        dzzVar.i(httpURLConnection, null);
                                        httpURLConnection.setInstanceFollowRedirects(false);
                                        int responseCode2 = httpURLConnection.getResponseCode();
                                        dzzVar.j(httpURLConnection, responseCode2);
                                        if (responseCode2 / 100 != 3) {
                                            return httpURLConnection;
                                        }
                                        String headerField = httpURLConnection.getHeaderField("Location");
                                        if (headerField == null) {
                                            throw new IOException("Missing Location header in redirect");
                                        }
                                        URL url2 = new URL(url, headerField);
                                        String protocol = url2.getProtocol();
                                        if (protocol == null) {
                                            throw new IOException("Protocol is null");
                                        }
                                        if (!protocol.equals("http") && !protocol.equals("https")) {
                                            throw new IOException("Unsupported scheme: ".concat(protocol));
                                        }
                                        agd.c("Redirecting to ".concat(headerField));
                                        httpURLConnection.disconnect();
                                        url = url2;
                                    }
                                }
                            }, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, -1);
                            if ((zzn != null) && (responseCode = zzn.getResponseCode()) >= 400) {
                                str4 = "badUrl";
                                try {
                                    str2 = "HTTP request failed. Code: " + Integer.toString(responseCode);
                                } catch (IOException | RuntimeException e2) {
                                    e = e2;
                                    str2 = null;
                                }
                                try {
                                    throw new IOException("HTTP status code " + responseCode + " at " + str);
                                } catch (IOException e3) {
                                    e = e3;
                                    if (e instanceof RuntimeException) {
                                    }
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException | NullPointerException unused) {
                                    }
                                    if (this.h) {
                                    }
                                    if (file7.exists()) {
                                    }
                                    zzg(str, file7.getAbsolutePath(), str4, str2);
                                    f5213f.remove(concat);
                                    return false;
                                } catch (RuntimeException e4) {
                                    e = e4;
                                    if (e instanceof RuntimeException) {
                                    }
                                    fileOutputStream.close();
                                    if (this.h) {
                                    }
                                    if (file7.exists()) {
                                    }
                                    zzg(str, file7.getAbsolutePath(), str4, str2);
                                    f5213f.remove(concat);
                                    return false;
                                }
                            }
                            int contentLength = zzn.getContentLength();
                            if (contentLength < 0) {
                                agd.b("Stream cache aborted, missing content-length header at " + str);
                                zzg(str, file7.getAbsolutePath(), "contentLengthMissing", null);
                                set.remove(concat);
                                return false;
                            }
                            String format = f5212e.format(contentLength);
                            int intValue = ((Integer) edtVar.f15379d.zza(zzbcn.zzq)).intValue();
                            if (contentLength > intValue) {
                                agd.b("Content length " + format + " exceeds limit at " + str);
                                StringBuilder sb = new StringBuilder();
                                sb.append("File too big for full file cache. Size: ");
                                sb.append(format);
                                zzg(str, file7.getAbsolutePath(), "sizeExceeded", sb.toString());
                                set.remove(concat);
                                return false;
                            }
                            agd.c("Caching " + format + " bytes from " + str);
                            ?? newChannel = Channels.newChannel(zzn.getInputStream());
                            FileOutputStream fileOutputStream2 = new FileOutputStream(file7);
                            try {
                                try {
                                    ?? channel = fileOutputStream2.getChannel();
                                    ?? allocate = ByteBuffer.allocate(1048576);
                                    ti.f20033a.v.getClass();
                                    long currentTimeMillis = System.currentTimeMillis();
                                    ?? r7 = zzbcn.zzI;
                                    gra graVar = new gra(((Long) edtVar.f15379d.zza(r7)).longValue());
                                    long longValue = ((Long) edtVar.f15379d.zza(zzbcn.zzH)).longValue();
                                    int i4 = 0;
                                    String str5 = r7;
                                    while (true) {
                                        int read = newChannel.read(allocate);
                                        if (read < 0) {
                                            fileOutputStream2.close();
                                            if (agd.i(3)) {
                                                agd.c("Preloaded " + f5212e.format(i4) + " bytes from " + str);
                                            }
                                            file7.setReadable(true, false);
                                            if (file8.isFile()) {
                                                file8.setLastModified(System.currentTimeMillis());
                                            } else {
                                                try {
                                                    file8.createNewFile();
                                                } catch (IOException unused2) {
                                                }
                                            }
                                            mx.f19684e.post(new bk(this, str, file7.getAbsolutePath(), i4));
                                            f5213f.remove(concat);
                                            return true;
                                        }
                                        int i5 = i4 + read;
                                        try {
                                            if (i5 > intValue) {
                                                String str6 = "File too big for full file cache. Size: " + Integer.toString(i5);
                                                throw new IOException("stream cache file size limit exceeded");
                                            }
                                            allocate.flip();
                                            while (channel.write(allocate) > 0) {
                                            }
                                            allocate.clear();
                                            if (System.currentTimeMillis() - currentTimeMillis > 1000 * longValue) {
                                                String str7 = "Timeout exceeded. Limit: " + Long.toString(longValue) + " sec";
                                                throw new IOException("stream cache time limit exceeded");
                                            }
                                            Object obj = channel;
                                            if (this.h) {
                                                throw new IOException("abort requested");
                                            }
                                            if (graVar.f()) {
                                                String str8 = allocate;
                                                i2 = contentLength;
                                                i3 = i5;
                                                j = longValue;
                                                str3 = str8;
                                                mx.f19684e.post(new yw(this, str, file7.getAbsolutePath(), i3, i2));
                                            } else {
                                                j = longValue;
                                                str3 = allocate;
                                                i2 = contentLength;
                                                i3 = i5;
                                            }
                                            i4 = i3;
                                            contentLength = i2;
                                            allocate = str3;
                                            channel = obj;
                                            longValue = j;
                                            str5 = str3;
                                        } catch (IOException | RuntimeException e5) {
                                            e = e5;
                                            str2 = str5;
                                            fileOutputStream = fileOutputStream2;
                                            if (e instanceof RuntimeException) {
                                            }
                                            fileOutputStream.close();
                                            if (this.h) {
                                            }
                                            if (file7.exists()) {
                                            }
                                            zzg(str, file7.getAbsolutePath(), str4, str2);
                                            f5213f.remove(concat);
                                            return false;
                                        }
                                    }
                                } catch (RuntimeException e6) {
                                    e = e6;
                                    fileOutputStream = fileOutputStream2;
                                    str2 = null;
                                    if (e instanceof RuntimeException) {
                                        ti.f20033a.f20034ab.zzw(e, "VideoStreamFullFileCache.preload");
                                    }
                                    fileOutputStream.close();
                                    if (this.h) {
                                        agd.k("Preload aborted for URL \"" + str + "\"");
                                    } else {
                                        zzfxd zzfxdVar = agd.f10175a;
                                    }
                                    if (file7.exists() && !file7.delete()) {
                                        agd.b("Could not delete partial cache file at ".concat(String.valueOf(file7.getAbsolutePath())));
                                    }
                                    zzg(str, file7.getAbsolutePath(), str4, str2);
                                    f5213f.remove(concat);
                                    return false;
                                }
                            } catch (IOException e7) {
                                e = e7;
                                fileOutputStream = fileOutputStream2;
                                str2 = null;
                                if (e instanceof RuntimeException) {
                                }
                                fileOutputStream.close();
                                if (this.h) {
                                }
                                if (file7.exists()) {
                                    agd.b("Could not delete partial cache file at ".concat(String.valueOf(file7.getAbsolutePath())));
                                }
                                zzg(str, file7.getAbsolutePath(), str4, str2);
                                f5213f.remove(concat);
                                return false;
                            }
                        } catch (IOException | RuntimeException e8) {
                            e = e8;
                            str2 = null;
                            fileOutputStream = null;
                        }
                    } finally {
                    }
                }
            }
        } while (z);
        agd.b("Unable to expire stream cache");
        zzg(str, null, "expireFailed", null);
        return false;
    }
}
