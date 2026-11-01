package g;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class gal implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final alf f17802a;

    /* renamed from: b, reason: collision with root package name */
    public final String f17803b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f17804c;

    /* renamed from: d, reason: collision with root package name */
    public final URL f17805d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f17806e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ fit f17807f;

    public gal(fit fitVar, String str, URL url, byte[] bArr, tl tlVar, alf alfVar) {
        this.f17807f = fitVar;
        ckd.bf(str);
        this.f17805d = url;
        this.f17806e = bArr;
        this.f17802a = alfVar;
        this.f17803b = str;
        this.f17804c = tlVar;
    }

    /* JADX WARN: Not initialized variable reg: 13, insn: 0x0105: MOVE (r11 I:??[OBJECT, ARRAY]) = (r13 I:??[OBJECT, ARRAY]), block:B:77:0x0103 */
    /* JADX WARN: Not initialized variable reg: 13, insn: 0x0108: MOVE (r12 I:??[OBJECT, ARRAY]) = (r13 I:??[OBJECT, ARRAY]), block:B:74:0x0107 */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0160 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x012d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Throwable th;
        HttpURLConnection httpURLConnection;
        Map map;
        IOException iOException;
        Map map2;
        int i;
        int i2;
        Map map3;
        Map map4;
        InputStream inputStream;
        String str = this.f17803b;
        fit fitVar = this.f17807f;
        cyg cygVar = (cyg) fitVar.z;
        cyg cygVar2 = (cyg) fitVar.z;
        fth fthVar = cygVar.j;
        cyg.ak(fthVar);
        fthVar.r();
        OutputStream outputStream = null;
        try {
            URLConnection openConnection = this.f17805d.openConnection();
            if (!(openConnection instanceof HttpURLConnection)) {
                throw new IOException("Failed to obtain HTTP connection");
            }
            httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            cygVar2.getClass();
            httpURLConnection.setConnectTimeout(60000);
            cygVar2.getClass();
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            try {
                Map map5 = this.f17804c;
                if (map5 != null) {
                    for (Map.Entry entry : map5.entrySet()) {
                        httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                    }
                }
                byte[] bArr = this.f17806e;
                if (bArr != null) {
                    fit fitVar2 = fitVar.f10133a.f12159e;
                    bsz.ag(fitVar2);
                    byte[] ay = fitVar2.ay(bArr);
                    bgm bgmVar = cygVar2.z;
                    cyg.ak(bgmVar);
                    dvb dvbVar = bgmVar.f11519c;
                    int length = ay.length;
                    dvbVar.i(Integer.valueOf(length), "Uploading data. size");
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
                    httpURLConnection.setFixedLengthStreamingMode(length);
                    httpURLConnection.connect();
                    OutputStream outputStream2 = httpURLConnection.getOutputStream();
                    try {
                        outputStream2.write(ay);
                        outputStream2.close();
                    } catch (IOException e2) {
                        iOException = e2;
                        map2 = null;
                        outputStream = outputStream2;
                        i2 = 0;
                        if (outputStream != null) {
                        }
                        if (httpURLConnection != null) {
                        }
                        fth fthVar2 = cygVar2.j;
                        cyg.ak(fthVar2);
                        fthVar2.p(new eal(this.f17803b, this.f17802a, i2, iOException, (byte[]) null, map2));
                    } catch (Throwable th2) {
                        th = th2;
                        map = null;
                        outputStream = outputStream2;
                        i = 0;
                        if (outputStream != null) {
                        }
                        if (httpURLConnection != null) {
                        }
                        fth fthVar3 = cygVar2.j;
                        cyg.ak(fthVar3);
                        fthVar3.p(new eal(this.f17803b, this.f17802a, i, (IOException) null, (byte[]) null, map));
                        throw th;
                    }
                }
                int responseCode = httpURLConnection.getResponseCode();
                try {
                    try {
                        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                        try {
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            inputStream = httpURLConnection.getInputStream();
                            try {
                                byte[] bArr2 = new byte[1024];
                                while (true) {
                                    int read = inputStream.read(bArr2);
                                    if (read <= 0) {
                                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                                        inputStream.close();
                                        httpURLConnection.disconnect();
                                        fth fthVar4 = cygVar2.j;
                                        cyg.ak(fthVar4);
                                        fthVar4.p(new eal(this.f17803b, this.f17802a, responseCode, (IOException) null, byteArray, headerFields));
                                        return;
                                    }
                                    byteArrayOutputStream.write(bArr2, 0, read);
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            inputStream = null;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        i2 = responseCode;
                        map2 = map4;
                        iOException = e;
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e4) {
                                bgm bgmVar2 = cygVar2.z;
                                cyg.ak(bgmVar2);
                                bgmVar2.f11518b.e(bgm.t(str), "Error closing HTTP compressed POST connection output stream. appId", e4);
                            }
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        fth fthVar22 = cygVar2.j;
                        cyg.ak(fthVar22);
                        fthVar22.p(new eal(this.f17803b, this.f17802a, i2, iOException, (byte[]) null, map2));
                    } catch (Throwable th5) {
                        th = th5;
                        i = responseCode;
                        map = map3;
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e5) {
                                bgm bgmVar3 = cygVar2.z;
                                cyg.ak(bgmVar3);
                                bgmVar3.f11518b.e(bgm.t(str), "Error closing HTTP compressed POST connection output stream. appId", e5);
                            }
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        fth fthVar32 = cygVar2.j;
                        cyg.ak(fthVar32);
                        fthVar32.p(new eal(this.f17803b, this.f17802a, i, (IOException) null, (byte[]) null, map));
                        throw th;
                    }
                } catch (IOException e6) {
                    e = e6;
                    map2 = null;
                    i2 = responseCode;
                    iOException = e;
                    if (outputStream != null) {
                    }
                    if (httpURLConnection != null) {
                    }
                    fth fthVar222 = cygVar2.j;
                    cyg.ak(fthVar222);
                    fthVar222.p(new eal(this.f17803b, this.f17802a, i2, iOException, (byte[]) null, map2));
                } catch (Throwable th6) {
                    th = th6;
                    map = null;
                    i = responseCode;
                    if (outputStream != null) {
                    }
                    if (httpURLConnection != null) {
                    }
                    fth fthVar322 = cygVar2.j;
                    cyg.ak(fthVar322);
                    fthVar322.p(new eal(this.f17803b, this.f17802a, i, (IOException) null, (byte[]) null, map));
                    throw th;
                }
            } catch (IOException e7) {
                iOException = e7;
                map2 = null;
            } catch (Throwable th7) {
                th = th7;
                map = null;
            }
        } catch (IOException e8) {
            iOException = e8;
            httpURLConnection = null;
            map2 = null;
        } catch (Throwable th8) {
            th = th8;
            httpURLConnection = null;
            map = null;
        }
    }
}
