package com.bytedance.msdk.s;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes.dex */
public class no implements com.bytedance.sdk.component.ia.dq.iw {
    public static final no dq = new no();

    /* renamed from: d, reason: collision with root package name */
    private volatile SQLiteDatabase f1253d;

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String d() {
        return "adevent";
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public SQLiteDatabase dq(Context context) {
        if (this.f1253d == null) {
            synchronized (this) {
                try {
                    if (this.f1253d == null) {
                        this.f1253d = com.bytedance.msdk.s.dq.iw.dq(context).dq().dq();
                        com.bytedance.msdk.dq.s.ox.dq("---------------DB CREATE  SUCCESS new------------");
                    }
                } finally {
                }
            }
        }
        return this.f1253d;
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String dq() {
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String iw() {
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String ox() {
        return "adevent_applog";
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String p() {
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String s() {
        return null;
    }
}
