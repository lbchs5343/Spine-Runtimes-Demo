package g;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.google.android.gms.internal.ads.zzces;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzfw;
import com.google.android.gms.internal.ads.zzgi;
import com.google.android.gms.internal.ads.zzgu;
import com.google.android.gms.internal.ads.zzgx;
import com.google.android.gms.internal.ads.zzgy;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class bhg extends zzfw implements zzgy {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f11577a = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: b, reason: collision with root package name */
    public final zzgx f11578b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f11579c;

    /* renamed from: d, reason: collision with root package name */
    public long f11580d;

    /* renamed from: e, reason: collision with root package name */
    public int f11581e;

    /* renamed from: f, reason: collision with root package name */
    public InputStream f11582f;

    /* renamed from: g, reason: collision with root package name */
    public final int f11583g;
    public final long h;
    public final int i;
    public long j;
    public long k;
    public boolean l;
    public zzgi m;
    public HttpURLConnection n;
    public long o;
    public final long p;
    public final String q;
    public long r;

    public bhg(String str, zzces zzcesVar, int i, int i2, long j, long j2) {
        super(true);
        zzdb.zzc(str);
        this.q = str;
        this.f11578b = new zzgx();
        this.f11583g = i;
        this.i = i2;
        this.f11579c = new ArrayDeque();
        this.p = j;
        this.h = j2;
        if (zzcesVar != null) {
            zzf(zzcesVar);
        }
    }

    public final void aa() {
        while (true) {
            ArrayDeque arrayDeque = this.f11579c;
            if (arrayDeque.isEmpty()) {
                this.n = null;
                return;
            } else {
                try {
                    ((HttpURLConnection) arrayDeque.remove()).disconnect();
                } catch (Exception e2) {
                    agd.f("Unexpected error while disconnecting", e2);
                }
            }
        }
    }

    public final HttpURLConnection z(int i, long j, long j2) {
        int i2;
        IOException iOException;
        String uri = this.m.zza.toString();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri).openConnection();
            httpURLConnection.setConnectTimeout(this.f11583g);
            httpURLConnection.setReadTimeout(this.i);
            for (Map.Entry entry : this.f11578b.zza().entrySet()) {
                try {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                } catch (IOException e2) {
                    iOException = e2;
                    i2 = i;
                    throw new zzgu("Unable to connect to ".concat(String.valueOf(uri)), iOException, this.m, ZeusPluginEventCallback.EVENT_START_LOAD, i2);
                }
            }
            httpURLConnection.setRequestProperty("Range", "bytes=" + j + "-" + j2);
            httpURLConnection.setRequestProperty("User-Agent", this.q);
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.connect();
            this.f11579c.add(httpURLConnection);
            String uri2 = this.m.zza.toString();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                this.f11581e = responseCode;
                if (responseCode < 200 || responseCode > 299) {
                    httpURLConnection.getHeaderFields();
                    aa();
                    throw new fjf(awf.ac(this.f11581e, "Response code: "), this.m, ZeusPluginEventCallback.EVENT_START_LOAD, i);
                }
                try {
                    InputStream inputStream = httpURLConnection.getInputStream();
                    if (this.f11582f != null) {
                        inputStream = new SequenceInputStream(this.f11582f, inputStream);
                    }
                    this.f11582f = inputStream;
                    return httpURLConnection;
                } catch (IOException e3) {
                    aa();
                    throw new zzgu(e3, this.m, ZeusPluginEventCallback.EVENT_START_LOAD, i);
                }
            } catch (IOException e4) {
                aa();
                throw new zzgu("Unable to connect to ".concat(String.valueOf(uri2)), e4, this.m, ZeusPluginEventCallback.EVENT_START_LOAD, i);
            }
        } catch (IOException e5) {
            i2 = i;
            iOException = e5;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.f11580d;
            long j2 = this.k;
            if (j - j2 == 0) {
                return -1;
            }
            long j3 = this.o + j2;
            long j4 = i2;
            long j5 = j3 + j4 + this.h;
            long j6 = this.j;
            long j7 = j6 + 1;
            if (j5 > j7) {
                long j8 = this.r;
                if (j6 < j8) {
                    long min = Math.min(j8, Math.max(((this.p + j7) - r4) - 1, (-1) + j7 + j4));
                    z(2, j7, min);
                    this.j = min;
                    j6 = min;
                }
            }
            int read = this.f11582f.read(bArr, i, (int) Math.min(j4, ((j6 + 1) - this.o) - this.k));
            if (read == -1) {
                throw new EOFException();
            }
            this.k += read;
            zzg(read);
            return read;
        } catch (IOException e2) {
            throw new zzgu(e2, this.m, ZeusPluginEventCallback.EVENT_START_LOAD, 2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final long zzb(zzgi zzgiVar) {
        this.m = zzgiVar;
        this.k = 0L;
        long j = zzgiVar.zze;
        long j2 = zzgiVar.zzf;
        long j3 = this.p;
        if (j2 != -1) {
            j3 = Math.min(j3, j2);
        }
        this.o = j;
        HttpURLConnection z = z(1, j, (j3 + j) - 1);
        this.n = z;
        String headerField = z.getHeaderField("Content-Range");
        if (!TextUtils.isEmpty(headerField)) {
            Matcher matcher = f11577a.matcher(headerField);
            if (matcher.find()) {
                try {
                    Long.parseLong(matcher.group(1));
                    long parseLong = Long.parseLong(matcher.group(2));
                    long parseLong2 = Long.parseLong(matcher.group(3));
                    long j4 = zzgiVar.zzf;
                    if (j4 != -1) {
                        this.f11580d = j4;
                        this.r = Math.max(parseLong, (this.o + j4) - 1);
                    } else {
                        this.f11580d = parseLong2 - this.o;
                        this.r = parseLong2 - 1;
                    }
                    this.j = parseLong;
                    this.l = true;
                    y(zzgiVar);
                    return this.f11580d;
                } catch (NumberFormatException unused) {
                    agd.d("Unexpected Content-Range [" + headerField + "]");
                }
            }
        }
        throw new fjf("Invalid content range: ".concat(String.valueOf(headerField)), zzgiVar, ZeusPluginEventCallback.EVENT_START_LOAD, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.n;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() {
        try {
            InputStream inputStream = this.f11582f;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    throw new zzgu(e2, this.m, ZeusPluginEventCallback.EVENT_START_LOAD, 3);
                }
            }
        } finally {
            this.f11582f = null;
            aa();
            if (this.l) {
                this.l = false;
                w();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfw, com.google.android.gms.internal.ads.zzgd
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.n;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }
}
