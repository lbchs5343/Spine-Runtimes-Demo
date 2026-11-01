package com.bytedance.sdk.component.d.dq.dq.d;

import android.text.TextUtils;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.jy;
import com.bytedance.sdk.component.d.dq.kk;
import com.bytedance.sdk.component.d.dq.q;
import com.bytedance.sdk.component.ox.d.ji;
import g.awf;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class dq implements com.bytedance.sdk.component.d.dq.d {

    /* renamed from: d, reason: collision with root package name */
    p f1837d;
    q dq;
    private volatile boolean iw;
    private AtomicBoolean s = new AtomicBoolean(false);
    final String ox = com.bytedance.sdk.component.d.dq.d.p.dq(UUID.randomUUID().toString()).dq();
    ji p = new ji();

    /* renamed from: com.bytedance.sdk.component.d.dq.dq.d.dq$dq, reason: collision with other inner class name */
    public final class C0113dq extends com.bytedance.sdk.component.d.dq.d.s {
        private final com.bytedance.sdk.component.d.dq.ox ox;
        private final dq p;

        public C0113dq(com.bytedance.sdk.component.d.dq.ox oxVar, dq dqVar) {
            super("net-async-call", new Object[0]);
            this.ox = oxVar;
            this.p = dqVar;
        }

        @Override // com.bytedance.sdk.component.d.dq.d.s
        public void d() {
            ji jiVar;
            try {
                dq dqVar = this.p;
                if (dqVar != null && (jiVar = dqVar.p) != null) {
                    jiVar.dq();
                }
                f p = dq.this.p();
                if (p == null) {
                    this.ox.onFailure(dq.this, new IOException("response is null"));
                } else {
                    this.ox.onResponse(dq.this, p);
                }
            } catch (Throwable th) {
                try {
                    if (th instanceof IOException) {
                        this.ox.onFailure(dq.this, th);
                    } else {
                        this.ox.onFailure(dq.this, new IOException(th));
                    }
                    try {
                        this.p.f1837d.d(this);
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                } finally {
                    try {
                        this.p.f1837d.d(this);
                    } catch (Throwable th3) {
                        th3.printStackTrace();
                    }
                }
            }
        }

        public void dq() {
            ji jiVar;
            dq dqVar = this.p;
            if (dqVar == null || (jiVar = dqVar.p) == null) {
                return;
            }
            jiVar.no();
        }
    }

    public dq(q qVar, p pVar) {
        this.dq = qVar;
        this.f1837d = pVar;
    }

    private boolean d(jy jyVar) {
        q qVar;
        byte[] bArr;
        return jyVar != null && (qVar = this.dq) != null && "POST".equalsIgnoreCase(qVar.ox()) && jyVar.iw == jy.dq.BYTE_ARRAY_TYPE && (bArr = jyVar.s) != null && bArr.length > 0;
    }

    private void dq(HttpURLConnection httpURLConnection) {
        if (httpURLConnection == null) {
            return;
        }
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + this.ox);
    }

    private void dq(byte[] bArr, OutputStream outputStream, String str, String str2) throws IOException {
        if (bArr == null || outputStream == null) {
            return;
        }
        PrintWriter printWriter = new PrintWriter((Writer) new OutputStreamWriter(outputStream, "UTF-8"), true);
        printWriter.append((CharSequence) ("--" + this.ox)).append((CharSequence) "\r\n");
        printWriter.append((CharSequence) awf.r(new StringBuilder("Content-Disposition: form-data; name=\""), str, "\"; filename=\"", str2, "\"")).append((CharSequence) "\r\n");
        printWriter.append((CharSequence) "Content-Type: multipart/form-data").append((CharSequence) "\r\n");
        printWriter.append((CharSequence) ("Content-Length: " + bArr.length)).append((CharSequence) "\r\n");
        printWriter.append((CharSequence) "\r\n");
        printWriter.flush();
        outputStream.write(bArr);
        printWriter.append((CharSequence) "\r\n");
        printWriter.append((CharSequence) ("--" + this.ox + "--")).append((CharSequence) "\r\n");
        printWriter.flush();
        printWriter.close();
    }

    private boolean dq(jy jyVar) {
        q qVar;
        byte[] bArr;
        return jyVar != null && (qVar = this.dq) != null && "POST".equalsIgnoreCase(qVar.ox()) && jyVar.iw == jy.dq.FILE_TYPE && (bArr = jyVar.s) != null && bArr.length > 0;
    }

    private boolean iw() {
        if (this.dq.p() == null) {
            return false;
        }
        return this.dq.p().containsKey("Content-Type");
    }

    private boolean ox(jy jyVar) {
        q qVar;
        return (jyVar == null || (qVar = this.dq) == null || !"POST".equalsIgnoreCase(qVar.ox()) || jyVar.iw != jy.dq.STRING_TYPE || TextUtils.isEmpty(jyVar.p)) ? false : true;
    }

    @Override // com.bytedance.sdk.component.d.dq.d
    public void d() {
        this.s.set(true);
    }

    @Override // com.bytedance.sdk.component.d.dq.d
    public f dq() throws IOException {
        synchronized (this) {
            if (this.iw) {
                throw new IllegalStateException("Already Executed");
            }
            this.iw = true;
        }
        try {
            this.f1837d.dq(this);
            return p();
        } finally {
            this.f1837d.d(this);
        }
    }

    public f dq(q qVar) throws IOException {
        try {
            ji jiVar = this.p;
            if (jiVar != null) {
                jiVar.d();
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(qVar.d().dq().toString()).openConnection();
            if (qVar.p() != null && qVar.p().size() > 0) {
                for (Map.Entry<String, List<String>> entry : qVar.p().entrySet()) {
                    Iterator<String> it = entry.getValue().iterator();
                    while (it.hasNext()) {
                        httpURLConnection.addRequestProperty(entry.getKey(), it.next());
                    }
                }
            }
            ig igVar = qVar.dq;
            if (igVar != null) {
                TimeUnit timeUnit = igVar.ox;
                if (timeUnit != null) {
                    httpURLConnection.setConnectTimeout((int) timeUnit.toMillis(igVar.f1845d));
                }
                ig igVar2 = qVar.dq;
                TimeUnit timeUnit2 = igVar2.s;
                if (timeUnit2 != null) {
                    httpURLConnection.setReadTimeout((int) timeUnit2.toMillis(igVar2.p));
                }
            }
            if (qVar.iw() == null) {
                httpURLConnection.setRequestMethod("GET");
            } else {
                if (!iw() && qVar.iw().ox != null) {
                    httpURLConnection.addRequestProperty("Content-Type", qVar.iw().ox.toString());
                }
                httpURLConnection.setRequestMethod(qVar.ox());
                if (dq(qVar.iw())) {
                    dq(httpURLConnection);
                }
                if ("POST".equalsIgnoreCase(qVar.ox())) {
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    if (ox(qVar.iw())) {
                        outputStream.write(qVar.iw().p.getBytes());
                    } else if (dq(qVar.iw())) {
                        dq(qVar.iw().s, outputStream, qVar.iw().d(), qVar.iw().dq());
                    } else if (d(qVar.iw())) {
                        outputStream.write(qVar.iw().s);
                    }
                    outputStream.flush();
                    outputStream.close();
                }
            }
            httpURLConnection.connect();
            long currentTimeMillis = System.currentTimeMillis();
            ji jiVar2 = this.p;
            if (jiVar2 != null) {
                jiVar2.ox();
                this.p.dq(currentTimeMillis);
            }
            httpURLConnection.getResponseCode();
            long currentTimeMillis2 = System.currentTimeMillis();
            if (this.s.get()) {
                httpURLConnection.disconnect();
                return null;
            }
            iw iwVar = new iw(httpURLConnection, qVar);
            iwVar.p = currentTimeMillis;
            iwVar.ox = currentTimeMillis2;
            ji jiVar3 = this.p;
            if (jiVar3 != null) {
                jiVar3.d(currentTimeMillis2);
            }
            iwVar.s = this.p;
            return iwVar;
        } catch (Exception e2) {
            throw new IOException(e2);
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.d
    public void dq(com.bytedance.sdk.component.d.dq.ox oxVar) {
        try {
            synchronized (this) {
                if (this.iw) {
                    throw new IllegalStateException("Already Executed");
                }
                this.iw = true;
            }
            this.f1837d.dq(new C0113dq(oxVar, this));
        } catch (Throwable th) {
            if (oxVar != null) {
                oxVar.onFailure(this, new IOException(th.getMessage()));
            }
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.d
    public boolean ox() {
        return this.s.get();
    }

    public f p() {
        List<kk> list;
        if (this.s.get()) {
            return null;
        }
        try {
            ig igVar = this.dq.dq;
            if (igVar == null || (list = igVar.dq) == null || list.size() <= 0) {
                return dq(this.dq);
            }
            ArrayList arrayList = new ArrayList(this.dq.dq.dq);
            arrayList.add(new kk() { // from class: com.bytedance.sdk.component.d.dq.dq.d.dq.1
                @Override // com.bytedance.sdk.component.d.dq.kk
                public f dq(kk.dq dqVar) throws IOException {
                    return dq.this.dq(dqVar.dq());
                }
            });
            return ((kk) arrayList.get(0)).dq(new d(arrayList, this.dq));
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public com.bytedance.sdk.component.d.dq.d clone() {
        return new dq(this.dq, this.f1837d);
    }
}
