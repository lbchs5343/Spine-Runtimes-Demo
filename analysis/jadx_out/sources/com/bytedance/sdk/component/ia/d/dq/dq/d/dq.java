package com.bytedance.sdk.component.ia.d.dq.dq.d;

import android.content.Context;
import g.tn;

/* loaded from: classes.dex */
public class dq extends mn {
    public dq(Context context, com.bytedance.sdk.component.ia.d.p.d.dq dqVar, com.bytedance.sdk.component.ia.dq.s sVar) {
        super(context, dqVar, sVar);
    }

    public static String d(String str) {
        return tn.ad("CREATE TABLE IF NOT EXISTS ", str, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)");
    }

    public static String ox(String str) {
        return tn.ad("ALTER TABLE ", str, " ADD COLUMN encrypt INTEGER default 0");
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.mn
    public byte d() {
        return (byte) 1;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.mn, com.bytedance.sdk.component.ia.d.dq.dq.d.d
    public String dq() {
        return ((mn) this).f1908d.d().s();
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.mn, com.bytedance.sdk.component.ia.d.dq.dq
    public boolean dq(com.bytedance.sdk.component.ia.dq.d dVar) {
        return com.bytedance.sdk.component.ia.d.ox.dq.s(dVar);
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.mn
    public byte ox() {
        return (byte) 3;
    }
}
