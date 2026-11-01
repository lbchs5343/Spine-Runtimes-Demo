package com.ss.android.socialbase.downloader.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.os.Parcel;
import android.os.Parcelable;
import g.ada;
import g.awf;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class d implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: com.ss.android.socialbase.downloader.model.d.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public d createFromParcel(Parcel parcel) {
            return new d(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public d[] newArray(int i) {
            return new d[i];
        }
    };
    private static final String dq = "d";

    /* renamed from: d, reason: collision with root package name */
    private int f9443d;
    private AtomicInteger ia;
    private int ig;
    private long iw;
    private com.ss.android.socialbase.downloader.ia.d jy;
    private long kk;
    private int mn;
    private boolean mp;
    private d no;
    private List<d> o;
    private long ox;
    private AtomicLong p;
    private AtomicBoolean q;
    private long s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private long f9444d;
        private int dq;
        private d ia;
        private int iw;
        private long mn;
        private long ox;
        private long p;
        private long s;

        public dq(int i) {
            this.dq = i;
        }

        public dq d(long j) {
            this.ox = j;
            return this;
        }

        public dq dq(int i) {
            this.iw = i;
            return this;
        }

        public dq dq(long j) {
            this.f9444d = j;
            return this;
        }

        public dq dq(d dVar) {
            this.ia = dVar;
            return this;
        }

        public d dq() {
            return new d(this);
        }

        public dq ox(long j) {
            this.p = j;
            return this;
        }

        public dq p(long j) {
            this.s = j;
            return this;
        }

        public dq s(long j) {
            this.mn = j;
            return this;
        }
    }

    public d(Cursor cursor) {
        if (cursor == null) {
            return;
        }
        this.f9443d = cursor.getInt(cursor.getColumnIndex(ada.COLUMN_ID));
        this.mn = cursor.getInt(cursor.getColumnIndex("chunkIndex"));
        this.ox = cursor.getLong(cursor.getColumnIndex("startOffset"));
        int columnIndex = cursor.getColumnIndex("curOffset");
        if (columnIndex != -1) {
            this.p = new AtomicLong(cursor.getLong(columnIndex));
        } else {
            this.p = new AtomicLong(0L);
        }
        this.s = cursor.getLong(cursor.getColumnIndex("endOffset"));
        int columnIndex2 = cursor.getColumnIndex("hostChunkIndex");
        if (columnIndex2 != -1) {
            this.ia = new AtomicInteger(cursor.getInt(columnIndex2));
        } else {
            this.ia = new AtomicInteger(-1);
        }
        int columnIndex3 = cursor.getColumnIndex("chunkContentLen");
        if (columnIndex3 != -1) {
            this.iw = cursor.getLong(columnIndex3);
        }
        this.q = new AtomicBoolean(false);
    }

    public d(Parcel parcel) {
        this.f9443d = parcel.readInt();
        this.ox = parcel.readLong();
        this.p = new AtomicLong(parcel.readLong());
        this.s = parcel.readLong();
        this.iw = parcel.readLong();
        this.mn = parcel.readInt();
        this.ia = new AtomicInteger(parcel.readInt());
    }

    private d(dq dqVar) {
        if (dqVar == null) {
            return;
        }
        this.f9443d = dqVar.dq;
        this.ox = dqVar.f9444d;
        this.p = new AtomicLong(dqVar.ox);
        this.s = dqVar.p;
        this.iw = dqVar.s;
        this.mn = dqVar.iw;
        this.kk = dqVar.mn;
        this.ia = new AtomicInteger(-1);
        dq(dqVar.ia);
        this.q = new AtomicBoolean(false);
    }

    public void cd() {
        this.kk = q();
    }

    public int d() {
        AtomicInteger atomicInteger = this.ia;
        if (atomicInteger == null) {
            return -1;
        }
        return atomicInteger.get();
    }

    public void d(int i) {
        this.f9443d = i;
    }

    public void d(long j) {
        AtomicLong atomicLong = this.p;
        if (atomicLong != null) {
            atomicLong.set(j);
        } else {
            this.p = new AtomicLong(j);
        }
    }

    public void d(boolean z) {
        this.mp = z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ContentValues dq() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(ada.COLUMN_ID, Integer.valueOf(this.f9443d));
        contentValues.put("chunkIndex", Integer.valueOf(this.mn));
        contentValues.put("startOffset", Long.valueOf(this.ox));
        contentValues.put("curOffset", Long.valueOf(q()));
        contentValues.put("endOffset", Long.valueOf(this.s));
        contentValues.put("chunkContentLen", Long.valueOf(this.iw));
        contentValues.put("hostChunkIndex", Integer.valueOf(d()));
        return contentValues;
    }

    public List<d> dq(int i, long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        int i2 = i;
        if (!p() || iw()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        long mp = mp();
        long ox = ox(true);
        long j6 = ox / i2;
        String str = dq;
        StringBuilder l = awf.l(ox, "retainLen:", " divideChunkForReuse chunkSize:");
        l.append(j6);
        l.append(" current host downloadChunk index:");
        l.append(this.mn);
        com.ss.android.socialbase.downloader.ox.dq.d(str, l.toString());
        int i3 = 0;
        while (i3 < i2) {
            if (i3 == 0) {
                j2 = ig();
            } else {
                int i4 = i2 - 1;
                if (i3 == i4) {
                    long f2 = f();
                    j3 = ox;
                    j4 = f2 > mp ? (f2 - mp) + 1 : ox - (i4 * j6);
                    j5 = f2;
                    j2 = mp;
                    d dq2 = new dq(this.f9443d).dq((-i3) - 1).dq(j2).d(mp).s(mp).ox(j5).p(j4).dq(this).dq();
                    long j7 = j6;
                    com.ss.android.socialbase.downloader.ox.dq.d(dq, "divide sub chunk : " + i3 + " startOffset:" + j2 + " curOffset:" + mp + " endOffset:" + j5 + " contentLen:" + j4);
                    arrayList.add(dq2);
                    mp += j7;
                    i3++;
                    i2 = i;
                    ox = j3;
                    j6 = j7;
                } else {
                    j2 = mp;
                }
            }
            j5 = (mp + j6) - 1;
            j3 = ox;
            j4 = j6;
            d dq22 = new dq(this.f9443d).dq((-i3) - 1).dq(j2).d(mp).s(mp).ox(j5).p(j4).dq(this).dq();
            long j72 = j6;
            com.ss.android.socialbase.downloader.ox.dq.d(dq, "divide sub chunk : " + i3 + " startOffset:" + j2 + " curOffset:" + mp + " endOffset:" + j5 + " contentLen:" + j4);
            arrayList.add(dq22);
            mp += j72;
            i3++;
            i2 = i;
            ox = j3;
            j6 = j72;
        }
        long j8 = 0;
        for (int size = arrayList.size() - 1; size > 0; size--) {
            d dVar = (d) arrayList.get(size);
            if (dVar != null) {
                j8 += dVar.fw();
            }
        }
        com.ss.android.socialbase.downloader.ox.dq.d(dq, "reuseChunkContentLen:".concat(String.valueOf(j8)));
        d dVar2 = (d) arrayList.get(0);
        if (dVar2 != null) {
            dVar2.dq((f() == 0 ? j - ig() : (f() - ig()) + 1) - j8);
            dVar2.ox(this.mn);
            com.ss.android.socialbase.downloader.ia.d dVar3 = this.jy;
            if (dVar3 != null) {
                dVar3.dq(dVar2.f(), fw() - j8);
            }
        }
        dq(arrayList);
        return arrayList;
    }

    public void dq(int i) {
        AtomicInteger atomicInteger = this.ia;
        if (atomicInteger == null) {
            this.ia = new AtomicInteger(i);
        } else {
            atomicInteger.set(i);
        }
    }

    public void dq(long j) {
        this.iw = j;
    }

    public void dq(SQLiteStatement sQLiteStatement) {
        if (sQLiteStatement == null) {
            return;
        }
        this.ig = 0;
        sQLiteStatement.clearBindings();
        int i = this.ig + 1;
        this.ig = i;
        sQLiteStatement.bindLong(i, this.f9443d);
        int i2 = this.ig + 1;
        this.ig = i2;
        sQLiteStatement.bindLong(i2, this.mn);
        int i3 = this.ig + 1;
        this.ig = i3;
        sQLiteStatement.bindLong(i3, this.ox);
        int i4 = this.ig + 1;
        this.ig = i4;
        sQLiteStatement.bindLong(i4, q());
        int i5 = this.ig + 1;
        this.ig = i5;
        sQLiteStatement.bindLong(i5, this.s);
        int i6 = this.ig + 1;
        this.ig = i6;
        sQLiteStatement.bindLong(i6, this.iw);
        int i7 = this.ig + 1;
        this.ig = i7;
        sQLiteStatement.bindLong(i7, d());
    }

    public void dq(com.ss.android.socialbase.downloader.ia.d dVar) {
        this.jy = dVar;
        cd();
    }

    public void dq(d dVar) {
        this.no = dVar;
        if (dVar != null) {
            dq(dVar.gh());
        }
    }

    public void dq(List<d> list) {
        this.o = list;
    }

    public void dq(boolean z) {
        AtomicBoolean atomicBoolean = this.q;
        if (atomicBoolean == null) {
            this.q = new AtomicBoolean(z);
        } else {
            atomicBoolean.set(z);
        }
        this.jy = null;
    }

    public long f() {
        return this.s;
    }

    public long fw() {
        return this.iw;
    }

    public int gh() {
        return this.mn;
    }

    public boolean ia() {
        d dVar = this.no;
        if (dVar == null) {
            return true;
        }
        if (!dVar.iw()) {
            return false;
        }
        for (int i = 0; i < this.no.mn().size(); i++) {
            d dVar2 = this.no.mn().get(i);
            if (dVar2 != null) {
                int indexOf = this.no.mn().indexOf(this);
                if (indexOf > i && !dVar2.kk()) {
                    return false;
                }
                if (indexOf == i) {
                    return true;
                }
            }
        }
        return false;
    }

    public long ig() {
        return this.ox;
    }

    public boolean iw() {
        List<d> list = this.o;
        return list != null && list.size() > 0;
    }

    public long jy() {
        long q = q() - this.ox;
        if (iw()) {
            q = 0;
            for (int i = 0; i < this.o.size(); i++) {
                d dVar = this.o.get(i);
                if (dVar != null) {
                    q = (dVar.q() - dVar.ig()) + q;
                }
            }
        }
        return q;
    }

    public boolean kk() {
        long j = this.ox;
        if (p()) {
            long j2 = this.kk;
            if (j2 > this.ox) {
                j = j2;
            }
        }
        return q() - j >= this.iw;
    }

    public List<d> mn() {
        return this.o;
    }

    public long mp() {
        AtomicLong atomicLong = this.p;
        if (atomicLong != null) {
            return atomicLong.get();
        }
        return 0L;
    }

    public int no() {
        return this.f9443d;
    }

    public long o() {
        d dVar = this.no;
        if (dVar != null && dVar.mn() != null) {
            int indexOf = this.no.mn().indexOf(this);
            boolean z = false;
            for (int i = 0; i < this.no.mn().size(); i++) {
                d dVar2 = this.no.mn().get(i);
                if (dVar2 != null) {
                    if (z) {
                        return dVar2.q();
                    }
                    if (indexOf == i) {
                        z = true;
                    }
                }
            }
        }
        return -1L;
    }

    public long ox(boolean z) {
        long q = q();
        long j = this.iw;
        long j2 = this.kk;
        long j3 = j - (q - j2);
        if (!z && q == j2) {
            j3 = j - (q - this.ox);
        }
        com.ss.android.socialbase.downloader.ox.dq.d("DownloadChunk", "contentLength:" + this.iw + " curOffset:" + q() + " oldOffset:" + this.kk + " retainLen:" + j3);
        if (j3 < 0) {
            return 0L;
        }
        return j3;
    }

    public void ox(int i) {
        this.mn = i;
    }

    public boolean ox() {
        AtomicBoolean atomicBoolean = this.q;
        if (atomicBoolean == null) {
            return false;
        }
        return atomicBoolean.get();
    }

    public boolean p() {
        return d() == -1;
    }

    public long q() {
        if (!p() || !iw()) {
            return mp();
        }
        long j = 0;
        for (int i = 0; i < this.o.size(); i++) {
            d dVar = this.o.get(i);
            if (dVar != null) {
                if (!dVar.kk()) {
                    return dVar.mp();
                }
                if (j < dVar.mp()) {
                    j = dVar.mp();
                }
            }
        }
        return j;
    }

    public d s() {
        d dVar = !p() ? this.no : this;
        if (dVar == null || !dVar.iw()) {
            return null;
        }
        return dVar.mn().get(0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f9443d);
        parcel.writeLong(this.ox);
        AtomicLong atomicLong = this.p;
        parcel.writeLong(atomicLong != null ? atomicLong.get() : 0L);
        parcel.writeLong(this.s);
        parcel.writeLong(this.iw);
        parcel.writeInt(this.mn);
        AtomicInteger atomicInteger = this.ia;
        parcel.writeInt(atomicInteger != null ? atomicInteger.get() : -1);
    }
}
