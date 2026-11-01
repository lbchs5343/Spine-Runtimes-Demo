package com.bytedance.msdk.ia.dq;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class ox {
    private static volatile ox dq;

    /* renamed from: d, reason: collision with root package name */
    private Uri f1086d;

    private ox() {
        if (com.bytedance.msdk.core.dq.getContext() != null) {
            this.f1086d = Uri.parse("content://" + com.bytedance.msdk.core.dq.getContext().getPackageName() + ".TTMultiProvider/gromore_prime_rit_adn_perform");
        }
    }

    public static ox dq() {
        if (dq == null) {
            synchronized (ox.class) {
                try {
                    if (dq == null) {
                        dq = new ox();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public void dq(String str, long j) {
        if (com.bytedance.msdk.core.dq.getContext() == null || this.f1086d == null || j <= 0) {
            return;
        }
        try {
            com.bytedance.msdk.core.dq.getContext().getContentResolver().delete(this.f1086d, "prime_rit=? AND time_stamp<?", new String[]{str, String.valueOf(j)});
        } catch (IllegalStateException unused) {
        }
    }

    public void insert(String str, String str2, String str3, String str4) {
        if (com.bytedance.msdk.core.dq.getContext() == null || this.f1086d == null) {
            return;
        }
        ContentResolver contentResolver = com.bytedance.msdk.core.dq.getContext().getContentResolver();
        ContentValues contentValues = new ContentValues();
        contentValues.put(MediationConstant.EXTRA_ADN_NAME, str);
        contentValues.put(MediationConstant.KEY_GM_PRIME_RIT, str2);
        contentValues.put("adn_rit", str3);
        contentValues.put("ad_action", str4);
        contentValues.put("time_stamp", Long.valueOf(System.currentTimeMillis()));
        contentResolver.insert(this.f1086d, contentValues);
    }

    public List<d> query(String str, String str2, long j, long j2) {
        String str3;
        if (com.bytedance.msdk.core.dq.getContext() == null || this.f1086d == null) {
            return null;
        }
        ContentResolver contentResolver = com.bytedance.msdk.core.dq.getContext().getContentResolver();
        String[] strArr = {str, str2, String.valueOf(j), String.valueOf(j2)};
        if (TextUtils.isEmpty(str)) {
            strArr = new String[]{str2, String.valueOf(j), String.valueOf(j2)};
            str3 = "prime_rit=? AND time_stamp>=? AND time_stamp<?";
        } else {
            str3 = "adn_name=? AND prime_rit=? AND time_stamp>=? AND time_stamp<?";
        }
        Cursor query = contentResolver.query(this.f1086d, null, str3, strArr, null);
        if (query == null) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        while (query.moveToNext()) {
            try {
                String string = query.getString(query.getColumnIndex(MediationConstant.EXTRA_ADN_NAME));
                String string2 = query.getString(query.getColumnIndex(MediationConstant.KEY_GM_PRIME_RIT));
                String string3 = query.getString(query.getColumnIndex("adn_rit"));
                String string4 = query.getString(query.getColumnIndex("ad_action"));
                long j3 = query.getLong(query.getColumnIndex("time_stamp"));
                d dVar = new d();
                dVar.ox(string);
                dVar.dq(string2);
                dVar.d(string3);
                dVar.p(string4);
                dVar.dq(j3);
                linkedList.add(dVar);
            } finally {
                query.close();
            }
        }
        return linkedList;
    }
}
