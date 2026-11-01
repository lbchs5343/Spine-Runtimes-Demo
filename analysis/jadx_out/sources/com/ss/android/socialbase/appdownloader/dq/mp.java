package com.ss.android.socialbase.appdownloader.dq;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import g.awf;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class mp extends dq {
    public mp(Context context, com.ss.android.socialbase.downloader.mn.dq dqVar, String str) {
        super(context, dqVar, str);
    }

    public static String dq(Map<String, String> map) {
        if (map == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            stringBuffer.append(entry.getKey());
            stringBuffer.append("=");
            stringBuffer.append(URLEncoder.encode(entry.getValue()));
            stringBuffer.append("&");
        }
        String stringBuffer2 = stringBuffer.toString();
        return stringBuffer2.endsWith("&") ? stringBuffer2.substring(0, stringBuffer2.length() - 1) : stringBuffer2;
    }

    @Override // com.ss.android.socialbase.appdownloader.dq.s
    public Intent d() {
        String ox = this.f9273d.ox("s");
        String dq = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox("bb"), ox);
        if (!TextUtils.isEmpty(dq) && dq.split(",").length == 2) {
            String dq2 = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox("bc"), ox);
            if (!TextUtils.isEmpty(dq2) && dq2.split(",").length == 2) {
                String[] split = dq.split(",");
                String[] split2 = dq2.split(",");
                String dq3 = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox("bd"), ox);
                String dq4 = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox("be"), ox);
                String dq5 = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox("bf"), ox);
                HashMap hashMap = new HashMap();
                hashMap.put(split[0], split[1]);
                hashMap.put(split2[0], split2[1]);
                hashMap.put(dq3, this.ox);
                Intent intent = new Intent();
                intent.setAction(dq5);
                StringBuilder o = awf.o(dq4);
                o.append(dq(hashMap));
                intent.setData(Uri.parse(o.toString()));
                intent.addFlags(268468224);
                return intent;
            }
        }
        return null;
    }
}
