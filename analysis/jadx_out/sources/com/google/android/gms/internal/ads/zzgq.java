package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.bytedance.pangle.ZeusPluginEventCallback;
import g.awf;
import g.drk;
import g.tn;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* loaded from: classes3.dex */
public final class zzgq extends zzfw implements zzgy {

    /* renamed from: a, reason: collision with root package name */
    public final String f8580a;

    /* renamed from: b, reason: collision with root package name */
    public zzgi f8581b;

    /* renamed from: c, reason: collision with root package name */
    public int f8582c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8583d;

    /* renamed from: e, reason: collision with root package name */
    public HttpURLConnection f8584e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f8585f;

    /* renamed from: g, reason: collision with root package name */
    public final int f8586g;
    public long h;
    public InputStream i;
    public final zzgx j;
    public final zzgx k;
    public long l;
    public final int m;

    public /* synthetic */ zzgq(String str, int i, int i2, boolean z, zzgx zzgxVar) {
        super(true);
        this.f8580a = str;
        this.f8586g = i;
        this.m = i2;
        this.f8585f = z;
        this.j = zzgxVar;
        this.k = new zzgx();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final HttpURLConnection n(URL url, long j, long j2, boolean z, boolean z2, Map map) {
        String sb;
        String str;
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f8586g);
        httpURLConnection.setReadTimeout(this.m);
        HashMap hashMap = new HashMap();
        hashMap.putAll(this.j.zza());
        hashMap.putAll(this.k.zza());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (j == 0) {
            if (j2 == -1) {
                sb = null;
                if (sb != null) {
                    httpURLConnection.setRequestProperty("Range", sb);
                }
                str = this.f8580a;
                if (str != null) {
                    httpURLConnection.setRequestProperty("User-Agent", str);
                }
                httpURLConnection.setRequestProperty("Accept-Encoding", true == z ? "identity" : "gzip");
                httpURLConnection.setInstanceFollowRedirects(z2);
                httpURLConnection.setDoOutput(false);
                int i = zzgi.zzh;
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.connect();
                return httpURLConnection;
            }
            j = 0;
        }
        StringBuilder l = awf.l(j, "bytes=", "-");
        if (j2 != -1) {
            l.append((j + j2) - 1);
        }
        sb = l.toString();
        if (sb != null) {
        }
        str = this.f8580a;
        if (str != null) {
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", true == z ? "identity" : "gzip");
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(false);
        int i2 = zzgi.zzh;
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.connect();
        return httpURLConnection;
    }

    public final URL o(URL url, String str, zzgi zzgiVar) {
        if (str == null) {
            throw new zzgu("Null location redirect", zzgiVar, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                throw new zzgu("Unsupported protocol redirect: ".concat(String.valueOf(protocol)), zzgiVar, 2001, 1);
            }
            if (this.f8585f || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new zzgu(tn.r("Disallowed cross-protocol redirect (", url.getProtocol(), " to ", protocol, ")"), zzgiVar, 2001, 1);
        } catch (MalformedURLException e2) {
            throw new zzgu(e2, zzgiVar, 2001, 1);
        }
    }

    public final void p() {
        HttpURLConnection httpURLConnection = this.f8584e;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                zzdt.zzd("DefaultHttpDataSource", "Unexpected error while disconnecting", e2);
            }
            this.f8584e = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) throws zzgu {
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.h;
            if (j != -1) {
                long j2 = j - this.l;
                if (j2 == 0) {
                    return -1;
                }
                i2 = (int) Math.min(i2, j2);
            }
            InputStream inputStream = this.i;
            int i3 = zzen.zza;
            int read = inputStream.read(bArr, i, i2);
            if (read == -1) {
                return -1;
            }
            this.l += read;
            zzg(read);
            return read;
        } catch (IOException e2) {
            zzgi zzgiVar = this.f8581b;
            int i4 = zzen.zza;
            throw zzgu.zza(e2, zzgiVar, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x009d, code lost:
    
        if (r1 == r16) goto L39;
     */
    @Override // com.google.android.gms.internal.ads.zzgd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long zzb(zzgi zzgiVar) throws zzgu {
        zzgq zzgqVar;
        HttpURLConnection n;
        long j;
        byte[] bArr;
        long j2;
        zzgq zzgqVar2 = this;
        zzgqVar2.f8581b = zzgiVar;
        long j3 = 0;
        zzgqVar2.l = 0L;
        zzgqVar2.h = 0L;
        x(zzgiVar);
        try {
            URL url = new URL(zzgiVar.zza.toString());
            long j4 = zzgiVar.zze;
            long j5 = zzgiVar.zzf;
            boolean zzb = zzgiVar.zzb(1);
            try {
                if (zzgqVar2.f8585f) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        if (i > 20) {
                            throw new zzgu(new NoRouteToHostException("Too many redirects: " + i2), zzgiVar, 2001, 1);
                        }
                        zzgqVar2 = this;
                        n = zzgqVar2.n(url, j4, j5, zzb, false, zzgiVar.zzd);
                        boolean z = zzb;
                        zzgqVar = zzgqVar2;
                        try {
                            int responseCode = n.getResponseCode();
                            String headerField = n.getHeaderField("Location");
                            j = j3;
                            if (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307 && responseCode != 308) {
                                break;
                            }
                            n.disconnect();
                            url = zzgqVar.o(url, headerField, zzgiVar);
                            zzb = z;
                            i = i2;
                            j3 = j;
                        } catch (IOException e2) {
                            e = e2;
                            zzgqVar.p();
                            throw zzgu.zza(e, zzgiVar, 1);
                        }
                    }
                } else {
                    n = zzgqVar2.n(url, j4, j5, zzb, true, zzgiVar.zzd);
                    zzgqVar = this;
                    j = 0;
                }
                zzgqVar.f8584e = n;
                zzgqVar.f8582c = n.getResponseCode();
                String responseMessage = n.getResponseMessage();
                int i3 = zzgqVar.f8582c;
                if (i3 < 200 || i3 > 299) {
                    Map<String, List<String>> headerFields = n.getHeaderFields();
                    if (zzgqVar.f8582c == 416) {
                        if (zzgiVar.zze == zzgz.zzb(n.getHeaderField("Content-Range"))) {
                            zzgqVar.f8583d = true;
                            y(zzgiVar);
                            long j6 = zzgiVar.zzf;
                            return j6 != -1 ? j6 : j;
                        }
                    }
                    InputStream errorStream = n.getErrorStream();
                    try {
                        bArr = errorStream != null ? zzgce.zzb(errorStream) : zzen.zzf;
                    } catch (IOException unused) {
                        bArr = zzen.zzf;
                    }
                    zzgqVar.p();
                    throw new zzgw(zzgqVar.f8582c, responseMessage, zzgqVar.f8582c == 416 ? new zzge(2008) : null, headerFields, zzgiVar, bArr);
                }
                n.getContentType();
                if (zzgqVar.f8582c == 200) {
                    j2 = zzgiVar.zze;
                }
                j2 = j;
                boolean equalsIgnoreCase = "gzip".equalsIgnoreCase(n.getHeaderField("Content-Encoding"));
                if (equalsIgnoreCase) {
                    zzgqVar.h = zzgiVar.zzf;
                } else {
                    long j7 = zzgiVar.zzf;
                    if (j7 != -1) {
                        zzgqVar.h = j7;
                    } else {
                        long zza = zzgz.zza(n.getHeaderField("Content-Length"), n.getHeaderField("Content-Range"));
                        zzgqVar.h = zza != -1 ? zza - j2 : -1L;
                    }
                }
                try {
                    zzgqVar.i = n.getInputStream();
                    if (equalsIgnoreCase) {
                        zzgqVar.i = new GZIPInputStream(zzgqVar.i);
                    }
                    zzgqVar.f8583d = true;
                    y(zzgiVar);
                    if (j2 != j) {
                        try {
                            byte[] bArr2 = new byte[4096];
                            while (j2 > j) {
                                int min = (int) Math.min(j2, 4096L);
                                InputStream inputStream = zzgqVar.i;
                                int i4 = zzen.zza;
                                int read = inputStream.read(bArr2, 0, min);
                                if (Thread.currentThread().isInterrupted()) {
                                    throw new zzgu(new InterruptedIOException(), zzgiVar, ZeusPluginEventCallback.EVENT_START_LOAD, 1);
                                }
                                if (read == -1) {
                                    throw new zzgu(zzgiVar, 2008, 1);
                                }
                                j2 -= read;
                                zzgqVar.zzg(read);
                            }
                        } catch (IOException e3) {
                            zzgqVar.p();
                            if (e3 instanceof zzgu) {
                                throw ((zzgu) e3);
                            }
                            throw new zzgu(e3, zzgiVar, ZeusPluginEventCallback.EVENT_START_LOAD, 1);
                        }
                    }
                    return zzgqVar.h;
                } catch (IOException e4) {
                    zzgqVar.p();
                    throw new zzgu(e4, zzgiVar, ZeusPluginEventCallback.EVENT_START_LOAD, 1);
                }
            } catch (IOException e5) {
                e = e5;
                zzgqVar = this;
            }
        } catch (IOException e6) {
            e = e6;
            zzgqVar = zzgqVar2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.f8584e;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() throws zzgu {
        try {
            InputStream inputStream = this.i;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    zzgi zzgiVar = this.f8581b;
                    int i = zzen.zza;
                    throw new zzgu(e2, zzgiVar, ZeusPluginEventCallback.EVENT_START_LOAD, 3);
                }
            }
        } finally {
            this.i = null;
            p();
            if (this.f8583d) {
                this.f8583d = false;
                w();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfw, com.google.android.gms.internal.ads.zzgd
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.f8584e;
        return httpURLConnection == null ? zzfzr.zzd() : new drk(httpURLConnection.getHeaderFields());
    }
}
