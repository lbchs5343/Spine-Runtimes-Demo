package com.bytedance.sdk.component.ia.d.dq.dq.dq;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.bytedance.sdk.component.ia.dq.iw;

/* loaded from: classes.dex */
public class d implements iw {
    public static final d dq = new d();

    /* renamed from: d, reason: collision with root package name */
    private volatile SQLiteDatabase f1910d;

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String d() {
        return "adevent";
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public SQLiteDatabase dq(Context context) {
        if (this.f1910d == null) {
            synchronized (this) {
                try {
                    if (this.f1910d == null) {
                        this.f1910d = new dq(context, this).getWritableDatabase();
                    }
                } finally {
                }
            }
        }
        return this.f1910d;
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String dq() {
        return "loghighpriority";
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String iw() {
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String ox() {
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String p() {
        return "logstats";
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String s() {
        return "logstatsbatch";
    }
}
