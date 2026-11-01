package com.ss.android.downloadlib.addownload.p;

import android.content.Context;
import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.q;

/* loaded from: classes.dex */
public class ig implements kk {
    @Override // com.ss.android.downloadlib.addownload.p.kk
    public boolean dq(com.ss.android.downloadad.api.dq.d dVar, int i, ia iaVar) {
        if (dVar == null) {
            return false;
        }
        return q.dq(dVar, !TextUtils.isEmpty(dVar.ws()) ? com.ss.android.downloadlib.o.dq((Context) null).dq(dVar.ws(), null, true) : com.ss.android.downloadlib.o.dq((Context) null).d(dVar.dq()), i, iaVar, false, null);
    }
}
