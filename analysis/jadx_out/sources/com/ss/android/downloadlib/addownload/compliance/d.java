package com.ss.android.downloadlib.addownload.compliance;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Pair;
import com.ss.android.download.api.config.cd;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.downloadlib.mn.ox;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {
    private SoftReference<Activity> dq;

    public static class dq {
        private static d dq = new d();
    }

    private d() {
    }

    public static d dq() {
        return dq.dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(long j, long j2, String str) {
        long j3;
        Exception exc;
        JSONObject optJSONObject;
        try {
            optJSONObject = new JSONObject(str).optJSONObject("package");
        } catch (Exception e2) {
            e = e2;
            j3 = j2;
        }
        try {
            if (optJSONObject == null || optJSONObject.length() == 0) {
                mn.dq(7, j2);
                return false;
            }
            com.ss.android.downloadlib.addownload.d.d dVar = new com.ss.android.downloadlib.addownload.d.d();
            dVar.dq = j;
            dVar.f9143d = j2;
            dVar.p = optJSONObject.optString("icon_url");
            dVar.s = optJSONObject.optString("app_name");
            dVar.ox = optJSONObject.optString("package_name");
            dVar.iw = optJSONObject.optString("version_name");
            dVar.mn = optJSONObject.optString("developer_name");
            dVar.kk = optJSONObject.optString("policy_url");
            JSONArray optJSONArray = optJSONObject.optJSONArray("permissions");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject = (JSONObject) optJSONArray.get(i);
                        dVar.ia.add(new Pair<>(jSONObject.optString("permission_name"), jSONObject.optString("permission_desc")));
                    } catch (Exception e3) {
                        exc = e3;
                        j3 = j2;
                        com.ss.android.downloadlib.s.ox.dq().dq(exc, "AdLpComplianceManager parseResponse");
                        mn.dq(7, j3);
                        return false;
                    }
                }
            }
            ox.dq().dq(dVar);
            p.dq().dq(dVar.dq(), j2, dVar.p);
            return true;
        } catch (Exception e4) {
            e = e4;
            exc = e;
            com.ss.android.downloadlib.s.ox.dq().dq(exc, "AdLpComplianceManager parseResponse");
            mn.dq(7, j3);
            return false;
        }
    }

    public Activity d() {
        Activity activity = this.dq.get();
        this.dq = null;
        return activity;
    }

    public void d(long j) {
        com.ss.android.downloadlib.addownload.s dq2 = com.ss.android.downloadlib.ia.dq().dq(com.ss.android.downloadlib.addownload.d.iw.dq().s(j).f9152d.getDownloadUrl());
        if (dq2 != null) {
            dq2.dq(true, true);
        } else {
            mn.dq(11, j);
            com.ss.android.downloadlib.s.ox.dq().d("startDownload handler null");
        }
    }

    public void dq(long j) {
        TTDelegateActivity.dq(j);
    }

    public void dq(Activity activity) {
        this.dq = new SoftReference<>(activity);
    }

    public boolean dq(DownloadModel downloadModel) {
        if (!downloadModel.isAd() || no.kk().optInt("ad_lp_show_app_dialog") == 0) {
            return false;
        }
        String webUrl = downloadModel.getDeepLink() == null ? null : downloadModel.getDeepLink().getWebUrl();
        return (TextUtils.isEmpty(webUrl) || Pattern.compile(no.kk().optString("ad_allow_web_url_regex", ".+(www.chengzijianzhan.com|www.toutiaopage.com/tetris/page|ad.toutiao.com/tetris/page).+")).matcher(webUrl).matches()) ? false : true;
    }

    public boolean dq(com.ss.android.downloadlib.addownload.d.s sVar) {
        long j;
        final long j2;
        if (TextUtils.isEmpty(sVar.f9152d.getLogExtra())) {
            mn.dq(9, sVar);
            com.ss.android.downloadlib.s.ox.dq().dq("requestAppInfo getLogExtra null");
            j2 = 0;
        } else {
            try {
                j = mp.dq(new JSONObject(sVar.f9152d.getLogExtra()), "convert_id");
            } catch (Exception e2) {
                e2.printStackTrace();
                j = 0;
            }
            if (j <= 0) {
                mn.dq(3, sVar);
            }
            j2 = j;
        }
        final long j3 = sVar.dq;
        com.ss.android.downloadlib.addownload.d.d dq2 = ox.dq().dq(j2, j3);
        if (dq2 != null) {
            p.dq().dq(dq2.dq(), j3, dq2.p);
            dq(dq2.dq());
            mn.dq("lp_app_dialog_try_show", sVar);
            return true;
        }
        StringBuilder sb = new StringBuilder();
        if (j2 > 0) {
            sb.append("convert_id=");
            sb.append(j2);
        }
        if (!TextUtils.isEmpty(sVar.f9152d.getPackageName())) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append("package_name=");
            sb.append(sVar.f9152d.getPackageName());
        }
        if (sb.length() <= 0) {
            mn.dq(6, sVar);
            return false;
        }
        com.ss.android.downloadlib.mn.ox.dq((ox.dq<String, R>) new ox.dq<String, Boolean>() { // from class: com.ss.android.downloadlib.addownload.compliance.d.2
            @Override // com.ss.android.downloadlib.mn.ox.dq
            public Boolean dq(String str) {
                final boolean[] zArr = {false};
                no.p().dq("GET", str, new HashMap(), new cd() { // from class: com.ss.android.downloadlib.addownload.compliance.d.2.1
                    @Override // com.ss.android.download.api.config.cd
                    public void dq(String str2) {
                        boolean[] zArr2 = zArr;
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        zArr2[0] = d.this.dq(j2, j3, str2);
                    }

                    @Override // com.ss.android.download.api.config.cd
                    public void dq(Throwable th) {
                        mn.dq(2, j3);
                        zArr[0] = false;
                    }
                });
                return Boolean.valueOf(zArr[0]);
            }
        }, "https://apps.oceanengine.com/customer/api/app/pkg_info?" + sb.toString()).dq(new ox.dq<Boolean, Object>() { // from class: com.ss.android.downloadlib.addownload.compliance.d.1
            @Override // com.ss.android.downloadlib.mn.ox.dq
            public Object dq(Boolean bool) {
                if (!bool.booleanValue()) {
                    d.this.d(j3);
                    return null;
                }
                d.this.dq(com.ss.android.downloadlib.addownload.d.d.dq(j2, j3));
                mn.d("lp_app_dialog_try_show", j3);
                return null;
            }
        }).dq();
        return true;
    }
}
