package com.bytedance.sdk.component.kk.d;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.d.dq.dq;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.fw;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.iw;
import com.bytedance.sdk.component.d.dq.mn;
import com.bytedance.sdk.component.d.dq.q;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class ox extends p {
    private com.bytedance.sdk.component.d.dq.dq ia;
    private boolean kk;
    private Map<String, String> o;
    public static final com.bytedance.sdk.component.d.dq.dq dq = new dq.C0114dq().dq().d();

    /* renamed from: d, reason: collision with root package name */
    public static final com.bytedance.sdk.component.d.dq.dq f1985d = new dq.C0114dq().d();

    public ox(ig igVar) {
        super(igVar);
        this.ia = dq;
        this.kk = false;
        this.o = new HashMap();
    }

    @Override // com.bytedance.sdk.component.kk.d.p
    public com.bytedance.sdk.component.kk.d dq() {
        try {
            q.dq dqVar = new q.dq();
            if (this.kk) {
                dqVar.dq(this.iw);
            } else {
                mn.dq dqVar2 = new mn.dq();
                Uri parse = Uri.parse(this.iw);
                dqVar2.dq(parse.getScheme());
                dqVar2.d(parse.getHost());
                String encodedPath = parse.getEncodedPath();
                if (!TextUtils.isEmpty(encodedPath)) {
                    if (encodedPath.startsWith("/")) {
                        encodedPath = encodedPath.substring(1);
                    }
                    dqVar2.ox(encodedPath);
                }
                Set<String> queryParameterNames = parse.getQueryParameterNames();
                if (queryParameterNames != null && queryParameterNames.size() > 0) {
                    for (String str : queryParameterNames) {
                        this.o.put(str, parse.getQueryParameter(str));
                    }
                }
                for (Map.Entry<String, String> entry : this.o.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key)) {
                        String encode = URLEncoder.encode(key, "UTF-8");
                        if (value == null) {
                            value = "";
                        }
                        dqVar2.dq(encode, URLEncoder.encode(value, "UTF-8"));
                    }
                }
                dqVar.dq(dqVar2.d());
            }
            dq(dqVar);
            dqVar.dq(this.ia);
            dqVar.dq((Object) d());
            f dq2 = this.ox.dq(dqVar.dq().d()).dq();
            if (dq2 == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            iw mn = dq2.mn();
            if (mn != null) {
                for (int i = 0; i < mn.dq(); i++) {
                    hashMap.put(mn.dq(i), mn.d(i));
                }
            }
            fw iw = dq2.iw();
            return new com.bytedance.sdk.component.kk.d(dq2.p(), dq2.ox(), dq2.s(), hashMap, iw != null ? iw.d() : "", dq2.d(), dq2.dq());
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void dq(final com.bytedance.sdk.component.kk.dq.dq dqVar) {
        try {
            q.dq dqVar2 = new q.dq();
            if (this.kk) {
                dqVar2.dq(this.iw);
            } else {
                mn.dq dqVar3 = new mn.dq();
                Uri parse = Uri.parse(this.iw);
                dqVar3.dq(parse.getScheme());
                dqVar3.d(parse.getHost());
                String encodedPath = parse.getEncodedPath();
                if (!TextUtils.isEmpty(encodedPath)) {
                    if (encodedPath.startsWith("/")) {
                        encodedPath = encodedPath.substring(1);
                    }
                    dqVar3.ox(encodedPath);
                }
                Set<String> queryParameterNames = parse.getQueryParameterNames();
                if (queryParameterNames != null && queryParameterNames.size() > 0) {
                    for (String str : queryParameterNames) {
                        this.o.put(str, parse.getQueryParameter(str));
                    }
                }
                for (Map.Entry<String, String> entry : this.o.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key)) {
                        String encode = URLEncoder.encode(key, "UTF-8");
                        if (value == null) {
                            value = "";
                        }
                        dqVar3.dq(encode, URLEncoder.encode(value, "UTF-8"));
                    }
                }
                dqVar2.dq(dqVar3.d());
            }
            dq(dqVar2);
            dqVar2.dq(this.ia);
            dqVar2.dq((Object) d());
            this.ox.dq(dqVar2.dq().d()).dq(new com.bytedance.sdk.component.d.dq.ox() { // from class: com.bytedance.sdk.component.kk.d.ox.1
                @Override // com.bytedance.sdk.component.d.dq.ox
                public void onFailure(com.bytedance.sdk.component.d.dq.d dVar, IOException iOException) {
                    com.bytedance.sdk.component.kk.dq.dq dqVar4 = dqVar;
                    if (dqVar4 != null) {
                        dqVar4.dq(ox.this, iOException);
                    }
                }

                @Override // com.bytedance.sdk.component.d.dq.ox
                public void onResponse(com.bytedance.sdk.component.d.dq.d dVar, f fVar) throws IOException {
                    if (dqVar != null) {
                        HashMap hashMap = new HashMap();
                        if (fVar != null) {
                            iw mn = fVar.mn();
                            if (mn != null) {
                                for (int i = 0; i < mn.dq(); i++) {
                                    hashMap.put(mn.dq(i), mn.d(i));
                                }
                            }
                            fw iw = fVar.iw();
                            dqVar.dq(ox.this, new com.bytedance.sdk.component.kk.d(fVar.p(), fVar.ox(), fVar.s(), hashMap, iw == null ? "" : iw.d(), fVar.d(), fVar.dq()));
                        }
                    }
                }
            });
        } catch (Throwable th) {
            if (com.bytedance.sdk.component.kk.p.s.dq()) {
                th.printStackTrace();
            }
            if (dqVar != null) {
                dqVar.dq(this, new IOException(th.getMessage()));
            }
        }
    }

    public void dq(String str, String str2) {
        if (str == null) {
            com.bytedance.sdk.component.kk.p.s.dq("GetExecutor", "name cannot be null !!!");
        } else {
            this.o.put(str, str2);
        }
    }
}
