package com.ss.android.download.api.ox;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.socialbase.appdownloader.iw.s;
import java.util.List;

/* loaded from: classes.dex */
public class dq {
    public static String d(Uri uri) {
        String scheme = uri.getScheme();
        List<String> pathSegments = uri.getPathSegments();
        return (no.kk().optInt("market_scheme_opt") == 1 && s.mn() && "samsungapps".equals(scheme) && pathSegments != null && pathSegments.size() == 1) ? pathSegments.get(0) : d.dq(uri.getQueryParameter(TTDownloadField.TT_ID), uri.getQueryParameter("packagename"), uri.getQueryParameter("pkg"), uri.getQueryParameter("package_name"), uri.getQueryParameter("appId"));
    }

    public static Uri dq(String str) {
        return (s.fw() && no.kk().optInt("enable_honor_market_scheme_opt", 1) == 1) ? new Uri.Builder().scheme("honormarket").authority(BaseConstants.MARKET_URI_AUTHORITY_DETAIL).appendQueryParameter(TTDownloadField.TT_ID, str).build() : Uri.parse("market://details?id=".concat(String.valueOf(str)));
    }

    public static boolean dq(Uri uri) {
        if (uri == null) {
            return false;
        }
        String scheme = uri.getScheme();
        if (TextUtils.isEmpty(scheme)) {
            return false;
        }
        return no.kk().optInt("market_url_opt", 1) == 0 ? "market".equals(scheme) : "market".equals(scheme) || "appmarket".equals(scheme) || "oaps".equals(scheme) || "oppomarket".equals(scheme) || "mimarket".equals(scheme) || "vivomarket".equals(scheme) || "vivoMarket".equals(scheme) || "gomarket".equals(scheme) || "goMarket".equals(scheme) || "mstore".equals(scheme) || "samsungapps".equals(scheme) || "honormarket".equals(scheme);
    }
}
