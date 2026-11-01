package com.ss.android.downloadlib.addownload.p;

import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.q;

/* loaded from: classes.dex */
public class s implements mn {
    @Override // com.ss.android.downloadlib.addownload.p.mn
    public boolean dq(com.ss.android.downloadad.api.dq.d dVar, int i, ia iaVar, com.ss.android.downloadlib.addownload.dq.ox oxVar) {
        if (dVar == null) {
            return false;
        }
        return q.dq(dVar, !TextUtils.isEmpty(dVar.ws()) ? com.ss.android.downloadlib.o.dq(com.ss.android.downloadlib.addownload.no.getContext()).dq(dVar.ws(), null, true) : com.ss.android.downloadlib.o.dq(com.ss.android.downloadlib.addownload.no.getContext()).d(dVar.dq()), i, iaVar, true, oxVar);
    }
}
