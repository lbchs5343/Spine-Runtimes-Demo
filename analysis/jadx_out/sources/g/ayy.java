package g;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.google.android.gms.internal.ads.zzces;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzfw;
import com.google.android.gms.internal.ads.zzge;
import com.google.android.gms.internal.ads.zzgi;
import com.google.android.gms.internal.ads.zzgu;
import com.google.android.gms.internal.ads.zzgw;
import com.google.android.gms.internal.ads.zzgx;
import com.google.android.gms.internal.ads.zzgy;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;

/* loaded from: classes3.dex */
public final class ayy extends zzfw implements zzgy {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f11082a = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReference f11083b = new AtomicReference();

    /* renamed from: c, reason: collision with root package name */
    public final String f11084c;

    /* renamed from: d, reason: collision with root package name */
    public HttpURLConnection f11085d;

    /* renamed from: e, reason: collision with root package name */
    public long f11086e;

    /* renamed from: f, reason: collision with root package name */
    public int f11087f;

    /* renamed from: g, reason: collision with root package name */
    public InputStream f11088g;
    public final ekn h;
    public final int i;
    public int j;
    public long k;
    public boolean l;
    public final zzgx m;
    public zzgi n;
    public long o;
    public final HashSet p;
    public final int q;
    public long r;

    public ayy(String str, zzces zzcesVar, int i, int i2, int i3) {
        super(true);
        this.h = new ekn(this);
        this.p = new HashSet();
        zzdb.zzc(str);
        this.f11084c = str;
        this.m = new zzgx();
        this.i = i;
        this.q = i2;
        this.j = i3;
        if (zzcesVar != null) {
            zzf(zzcesVar);
        }
    }

    public final void z() {
        HttpURLConnection httpURLConnection = this.f11085d;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                agd.f("Unexpected error while disconnecting", e2);
            }
            this.f11085d = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) {
        AtomicReference atomicReference = f11083b;
        try {
            if (this.o != this.f11086e) {
                byte[] bArr2 = (byte[]) atomicReference.getAndSet(null);
                if (bArr2 == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.o;
                    long j2 = this.f11086e;
                    if (j == j2) {
                        atomicReference.set(bArr2);
                        break;
                    }
                    int read = this.f11088g.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.o += read;
                    zzg(read);
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.k;
            if (j3 != -1) {
                long j4 = j3 - this.r;
                if (j4 == 0) {
                    return -1;
                }
                i2 = (int) Math.min(i2, j4);
            }
            int read2 = this.f11088g.read(bArr, i, i2);
            if (read2 == -1) {
                if (this.k == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.r += read2;
            zzg(read2);
            return read2;
        } catch (IOException e2) {
            throw new zzgu(e2, this.n, ZeusPluginEventCallback.EVENT_START_LOAD, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x010c, code lost:
    
        if (r2 == r16) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x023e A[Catch: IOException -> 0x003f, TryCatch #3 {IOException -> 0x003f, blocks: (B:3:0x000e, B:4:0x0024, B:6:0x002a, B:8:0x0034, B:9:0x0045, B:10:0x005d, B:12:0x0063, B:19:0x008b, B:21:0x00a5, B:22:0x00b7, B:23:0x00bc, B:25:0x00c5, B:26:0x00cc, B:39:0x00f4, B:101:0x0233, B:103:0x023e, B:105:0x024f, B:111:0x0258, B:112:0x0267, B:115:0x026e, B:116:0x0275, B:120:0x0276, B:121:0x028c), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x026e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c5 A[Catch: IOException -> 0x003f, TryCatch #3 {IOException -> 0x003f, blocks: (B:3:0x000e, B:4:0x0024, B:6:0x002a, B:8:0x0034, B:9:0x0045, B:10:0x005d, B:12:0x0063, B:19:0x008b, B:21:0x00a5, B:22:0x00b7, B:23:0x00bc, B:25:0x00c5, B:26:0x00cc, B:39:0x00f4, B:101:0x0233, B:103:0x023e, B:105:0x024f, B:111:0x0258, B:112:0x0267, B:115:0x026e, B:116:0x0275, B:120:0x0276, B:121:0x028c), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01c8  */
    @Override // com.google.android.gms.internal.ads.zzgd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long zzb(zzgi zzgiVar) {
        long j;
        long j2;
        long j3;
        int responseCode;
        String headerField;
        long j4;
        long parseLong;
        String headerField2;
        this.n = zzgiVar;
        long j5 = 0;
        this.r = 0L;
        this.o = 0L;
        try {
            URL url = new URL(zzgiVar.zza.toString());
            long j6 = zzgiVar.zze;
            long j7 = zzgiVar.zzf;
            boolean zzb = zzgiVar.zzb(1);
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (i > 20) {
                    throw new NoRouteToHostException("Too many redirects: " + i2);
                }
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                if (httpURLConnection instanceof HttpsURLConnection) {
                    j = j5;
                    ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(this.h);
                } else {
                    j = j5;
                }
                httpURLConnection.setConnectTimeout(this.i);
                httpURLConnection.setReadTimeout(this.q);
                for (Map.Entry entry : this.m.zza().entrySet()) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                if (j6 == j) {
                    j2 = -1;
                    if (j7 != -1) {
                        j3 = j;
                    }
                    httpURLConnection.setRequestProperty("User-Agent", this.f11084c);
                    if (!zzb) {
                        httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
                    }
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setDoOutput(false);
                    httpURLConnection.connect();
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307 && responseCode != 308) {
                        this.f11085d = httpURLConnection;
                        try {
                            int responseCode2 = httpURLConnection.getResponseCode();
                            this.f11087f = responseCode2;
                            if (responseCode2 < 200 || responseCode2 > 299) {
                                Map<String, List<String>> headerFields = this.f11085d.getHeaderFields();
                                z();
                                zzgw zzgwVar = new zzgw(this.f11087f, null, null, headerFields, zzgiVar, zzen.zzf);
                                if (this.f11087f != 416) {
                                    throw zzgwVar;
                                }
                                zzgwVar.initCause(new zzge(2008));
                                throw zzgwVar;
                            }
                            if (responseCode2 == 200) {
                                j4 = zzgiVar.zze;
                            }
                            j4 = j;
                            this.f11086e = j4;
                            if (zzgiVar.zzb(1)) {
                                this.k = zzgiVar.zzf;
                            } else {
                                long j8 = zzgiVar.zzf;
                                if (j8 != j2) {
                                    this.k = j8;
                                } else {
                                    HttpURLConnection httpURLConnection2 = this.f11085d;
                                    String headerField3 = httpURLConnection2.getHeaderField("Content-Length");
                                    if (!TextUtils.isEmpty(headerField3)) {
                                        try {
                                            parseLong = Long.parseLong(headerField3);
                                        } catch (NumberFormatException unused) {
                                            agd.d("Unexpected Content-Length [" + headerField3 + "]");
                                        }
                                        headerField2 = httpURLConnection2.getHeaderField("Content-Range");
                                        if (!TextUtils.isEmpty(headerField2)) {
                                            Matcher matcher = f11082a.matcher(headerField2);
                                            if (matcher.find()) {
                                                try {
                                                    long parseLong2 = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
                                                    if (parseLong < j) {
                                                        parseLong = parseLong2;
                                                    } else if (parseLong != parseLong2) {
                                                        agd.b("Inconsistent headers [" + headerField3 + "] [" + headerField2 + "]");
                                                        parseLong = Math.max(parseLong, parseLong2);
                                                    }
                                                } catch (NumberFormatException unused2) {
                                                    agd.d("Unexpected Content-Range [" + headerField2 + "]");
                                                }
                                            }
                                        }
                                        this.k = parseLong == j2 ? parseLong - this.f11086e : j2;
                                    }
                                    parseLong = j2;
                                    headerField2 = httpURLConnection2.getHeaderField("Content-Range");
                                    if (!TextUtils.isEmpty(headerField2)) {
                                    }
                                    this.k = parseLong == j2 ? parseLong - this.f11086e : j2;
                                }
                            }
                            try {
                                this.f11088g = this.f11085d.getInputStream();
                                this.l = true;
                                y(zzgiVar);
                                return this.k;
                            } catch (IOException e2) {
                                z();
                                throw new zzgu(e2, zzgiVar, ZeusPluginEventCallback.EVENT_START_LOAD, 1);
                            }
                        } catch (IOException e3) {
                            z();
                            throw new zzgu("Unable to connect to ".concat(String.valueOf(zzgiVar.zza.toString())), e3, zzgiVar, ZeusPluginEventCallback.EVENT_START_LOAD, 1);
                        }
                    }
                    headerField = httpURLConnection.getHeaderField("Location");
                    httpURLConnection.disconnect();
                    if (headerField != null) {
                        throw new ProtocolException("Null location redirect");
                    }
                    URL url2 = new URL(url, headerField);
                    String protocol = url2.getProtocol();
                    if (!"https".equals(protocol) && !"http".equals(protocol)) {
                        throw new ProtocolException("Unsupported protocol redirect: ".concat(String.valueOf(protocol)));
                    }
                    url = url2;
                    i = i2;
                    j5 = j;
                } else {
                    j2 = -1;
                    j3 = j6;
                }
                String str = "bytes=" + j3 + "-";
                if (j7 != j2) {
                    str = str + (j3 + j7 + j2);
                }
                httpURLConnection.setRequestProperty("Range", str);
                httpURLConnection.setRequestProperty("User-Agent", this.f11084c);
                if (!zzb) {
                }
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.setDoOutput(false);
                httpURLConnection.connect();
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 300) {
                }
                headerField = httpURLConnection.getHeaderField("Location");
                httpURLConnection.disconnect();
                if (headerField != null) {
                }
            }
        } catch (IOException e4) {
            throw new zzgu("Unable to connect to ".concat(String.valueOf(zzgiVar.zza.toString())), e4, zzgiVar, ZeusPluginEventCallback.EVENT_START_LOAD, 1);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.f11085d;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() {
        HashSet hashSet = this.p;
        try {
            InputStream inputStream = this.f11088g;
            if (inputStream != null) {
                int i = zzen.zza;
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    throw new zzgu(e2, this.n, ZeusPluginEventCallback.EVENT_START_LOAD, 3);
                }
            }
        } finally {
            this.f11088g = null;
            z();
            if (this.l) {
                this.l = false;
                w();
            }
            hashSet.clear();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfw, com.google.android.gms.internal.ads.zzgd
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.f11085d;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }
}
