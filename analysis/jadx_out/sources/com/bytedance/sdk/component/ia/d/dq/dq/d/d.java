package com.bytedance.sdk.component.ia.d.dq.dq.d;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import g.ada;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class d extends com.bytedance.sdk.component.ia.d.dq.dq implements ox {

    /* renamed from: d, reason: collision with root package name */
    private final Context f1906d;
    private com.bytedance.sdk.component.ia.dq.s ox;
    private com.bytedance.sdk.component.ia.d.p.d.dq p;
    protected final List<com.bytedance.sdk.component.ia.dq.d> dq = new ArrayList();
    private boolean s = false;
    private final Runnable iw = new Runnable() { // from class: com.bytedance.sdk.component.ia.d.dq.dq.d.d.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (d.this) {
                try {
                    if (d.this.dq.isEmpty()) {
                        d.this.s = false;
                        return;
                    }
                    ArrayList arrayList = new ArrayList(d.this.dq);
                    d.this.dq.clear();
                    d.this.s = false;
                    d.this.d(arrayList);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    public d(Context context, com.bytedance.sdk.component.ia.dq.s sVar, com.bytedance.sdk.component.ia.d.p.d.dq dqVar) {
        this.f1906d = context;
        this.ox = sVar;
        this.p = dqVar;
    }

    private void d() {
        if (this.s) {
            return;
        }
        com.bytedance.sdk.component.ia.d.mn.dq.dq().postDelayed(this.iw, com.bytedance.sdk.component.ia.d.mn.dq.d());
        this.s = true;
    }

    private boolean dq(List<com.bytedance.sdk.component.ia.dq.d> list, List<String> list2) {
        if (list != null && !list.isEmpty() && list2 != null && !list2.isEmpty()) {
            try {
                Iterator<com.bytedance.sdk.component.ia.dq.d> it = list.iterator();
                while (it.hasNext()) {
                    com.bytedance.sdk.component.ia.dq.d next = it.next();
                    if (next != null) {
                        String ox = next.ox();
                        if (!TextUtils.isEmpty(ox) && list2.contains(ox)) {
                            it.remove();
                        }
                    }
                }
            } catch (Throwable th) {
                com.bytedance.sdk.component.ia.d.ox.ox.dq("DBInsertMemRepo", "deleteMemList: " + th.getMessage(), this.ox);
            }
        }
        return (list == null || list.isEmpty()) ? false : true;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq
    public List<com.bytedance.sdk.component.ia.dq.d> d(int i, com.bytedance.sdk.component.ia.dq.d dVar, List<String> list, String str) {
        List<com.bytedance.sdk.component.ia.dq.d> dq = dq(ada.COLUMN_ID, i);
        if (!dq(dq, list)) {
            return null;
        }
        dq();
        dq.size();
        return dq;
    }

    public synchronized void d(com.bytedance.sdk.component.ia.dq.d dVar) {
        if (dq(dVar) && dVar.mn() != null && !TextUtils.isEmpty(dVar.ox())) {
            this.dq.add(dVar);
            d();
        }
    }

    public void d(List<com.bytedance.sdk.component.ia.dq.d> list) {
        com.bytedance.sdk.component.ia.d.dq.dq.d.insert(getContext(), dq(), list, this.ox);
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq
    public boolean d(int i, String str, com.bytedance.sdk.component.ia.dq.d dVar) {
        if (this.p == null) {
            return false;
        }
        int p = p();
        int dq = this.p.dq();
        com.bytedance.sdk.component.ia.d.ox.ox.dq("check db " + dq() + " count:" + p + " MaxCacheCount:" + dq + " message:" + com.bytedance.sdk.component.ia.d.ox.dq.d(i), this.ox);
        return p >= dq;
    }

    public com.bytedance.sdk.component.ia.d.dq.d dq(int i, List<com.bytedance.sdk.component.ia.dq.d> list) {
        com.bytedance.sdk.component.ia.d.dq.d dVar = new com.bytedance.sdk.component.ia.d.dq.d();
        if (list == null || list.size() == 0 || list.get(0) == null || !dq(list.get(0))) {
            dVar.dq(false);
            return dVar;
        }
        if (i == 200 || i == -1 || i == -3) {
            dVar.dq(delete(list));
        } else {
            dVar.dq("code:".concat(String.valueOf(i)));
        }
        dVar.dq(true);
        return dVar;
    }

    public abstract String dq();

    public List<com.bytedance.sdk.component.ia.dq.d> dq(int i, int i2, com.bytedance.sdk.component.ia.dq.d dVar) {
        int d2;
        if (this.p == null || dVar == null || !com.bytedance.sdk.component.ia.d.ox.dq.dq(i) || !dq(dVar) || (d2 = this.p.d()) <= i2) {
            return null;
        }
        return dq(d2 - i2, ada.COLUMN_ID, i);
    }

    public void dq(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            Iterator<com.bytedance.sdk.component.ia.dq.d> it = this.dq.iterator();
            while (it.hasNext()) {
                com.bytedance.sdk.component.ia.dq.d next = it.next();
                if (next != null) {
                    String ox = next.ox();
                    if (!TextUtils.isEmpty(ox) && list.contains(ox)) {
                        it.remove();
                    }
                }
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.ia.d.ox.ox.dq("DBInsertMemRepo", dq() + "deleteMemList: " + th.getMessage(), this.ox.s());
        }
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq
    public boolean dq(String str) {
        if (this.p == null) {
            return false;
        }
        int p = p();
        com.bytedance.sdk.component.ia.d.ox.ox.dq("check flush db " + dq() + " count:" + p, this.ox);
        return p > 0;
    }

    public Context getContext() {
        return this.f1906d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
    
        if (r1 == null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
    
        if (r1 != null) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int p() {
        Cursor cursor = null;
        int i = 0;
        try {
            cursor = com.bytedance.sdk.component.ia.d.dq.dq.d.query(getContext(), dq(), new String[]{"count(1)"}, null, null, null, null, null, this.ox);
            if (cursor != null) {
                cursor.moveToFirst();
                i = cursor.getInt(0);
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
        return i;
    }
}
