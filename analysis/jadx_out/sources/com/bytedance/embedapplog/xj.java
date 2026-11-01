package com.bytedance.embedapplog;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.UUID;

/* loaded from: classes.dex */
final class xj {
    private static io<String> dq = new io<String>() { // from class: com.bytedance.embedapplog.xj.1
        @Override // com.bytedance.embedapplog.io
        /* renamed from: ox, reason: merged with bridge method [inline-methods] */
        public String dq(Object... objArr) {
            SharedPreferences sharedPreferences = (SharedPreferences) objArr[0];
            String string = sharedPreferences.getString("cdid", "");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            String uuid = UUID.randomUUID().toString();
            sharedPreferences.edit().putString("cdid", uuid).apply();
            return uuid;
        }
    };

    public static String dq(SharedPreferences sharedPreferences) {
        return dq.d(sharedPreferences);
    }
}
