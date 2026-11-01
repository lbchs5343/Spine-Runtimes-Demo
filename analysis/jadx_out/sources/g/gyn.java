package g;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.zip.CRC32;

/* loaded from: classes.dex */
public final class gyn extends biz {
    public byte[] m;
    public final ArrayList n;
    public ArrayList o;
    public final byte p;
    public final byte q;
    public static final byte[] k = {-119, 80, 78, 71, 13, 10, 26, 10};
    public static final byte[] j = {0, 0, 0, 0, 73, 69, 78, 68, -82, 66, 96, -126};
    public static final ThreadLocal l = new ThreadLocal();

    public gyn(dbj dbjVar, bxt bxtVar) {
        super(dbjVar);
        this.n = new ArrayList();
        this.o = new ArrayList();
        this.p = bxtVar.k;
        this.q = bxtVar.j;
        int i = bxtVar.m * 1000;
        short s = bxtVar.f12404f;
        int i2 = i / (s == 0 ? (short) 100 : s);
        this.f11683f = i2;
        if (i2 < 10) {
            this.f11683f = 100;
        }
        this.f11684g = bxtVar.l;
        this.h = bxtVar.f12405g;
        this.f11680c = bxtVar.h;
        this.f11681d = bxtVar.i;
    }

    @Override // g.biz
    public final Bitmap a(Canvas canvas, Paint paint, int i, Bitmap bitmap, dcq dcqVar) {
        Bitmap decodeByteArray;
        Rect rect = this.f11679b;
        Rect rect2 = this.i;
        try {
            int r = r(dcqVar);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = false;
            options.inSampleSize = i;
            options.inMutable = true;
            options.inBitmap = bitmap;
            byte[] array = ((ByteBuffer) dcqVar.f13976f).array();
            try {
                decodeByteArray = BitmapFactory.decodeByteArray(array, 0, r, options);
            } catch (IllegalArgumentException unused) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inJustDecodeBounds = false;
                options2.inSampleSize = i;
                options2.inMutable = true;
                decodeByteArray = BitmapFactory.decodeByteArray(array, 0, r, options2);
            }
            rect2.left = 0;
            rect2.top = 0;
            rect2.right = decodeByteArray.getWidth();
            rect2.bottom = decodeByteArray.getHeight();
            float f2 = i;
            float f3 = this.f11680c / f2;
            rect.left = (int) f3;
            rect.top = (int) (this.f11681d / f2);
            rect.right = (int) (f3 + decodeByteArray.getWidth());
            rect.bottom = (int) ((this.f11681d / f2) + decodeByteArray.getHeight());
            canvas.drawBitmap(decodeByteArray, rect2, rect, paint);
            return decodeByteArray;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final int r(dcq dcqVar) {
        dan danVar;
        Iterator it = this.o.iterator();
        int i = 33;
        while (it.hasNext()) {
            i += ((ape) it.next()).f10611c + 12;
        }
        ArrayList arrayList = this.n;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ape apeVar = (ape) it2.next();
            if (apeVar instanceof dqv) {
                i += apeVar.f10611c + 12;
            } else if (apeVar instanceof aey) {
                i = apeVar.f10611c + 8 + i;
            }
        }
        int i2 = i + 12;
        dcqVar.k(i2);
        ((ByteBuffer) dcqVar.f13976f).put(k);
        dcqVar.l(13);
        int position = ((ByteBuffer) dcqVar.f13976f).position();
        dcqVar.i(ene.f15855a);
        dcqVar.l(this.f11684g);
        dcqVar.l(this.h);
        ((ByteBuffer) dcqVar.f13976f).put(this.m);
        ThreadLocal threadLocal = l;
        CRC32 crc32 = (CRC32) threadLocal.get();
        if (crc32 == null) {
            crc32 = new CRC32();
            threadLocal.set(crc32);
        }
        crc32.reset();
        crc32.update(((ByteBuffer) dcqVar.f13976f).array(), position, 17);
        dcqVar.l((int) crc32.getValue());
        Iterator it3 = this.o.iterator();
        while (true) {
            boolean hasNext = it3.hasNext();
            danVar = this.f11682e;
            if (!hasNext) {
                break;
            }
            ape apeVar2 = (ape) it3.next();
            if (!(apeVar2 instanceof bje)) {
                dbj dbjVar = (dbj) danVar;
                dbjVar.af();
                dbjVar.aa(apeVar2.f10612d);
                dbjVar.ak(((ByteBuffer) dcqVar.f13976f).array(), ((ByteBuffer) dcqVar.f13976f).position(), apeVar2.f10611c + 12);
                int i3 = apeVar2.f10611c + 12;
                ByteBuffer byteBuffer = (ByteBuffer) dcqVar.f13976f;
                byteBuffer.position(byteBuffer.position() + i3);
            }
        }
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            ape apeVar3 = (ape) it4.next();
            if (apeVar3 instanceof dqv) {
                dbj dbjVar2 = (dbj) danVar;
                dbjVar2.af();
                dbjVar2.aa(apeVar3.f10612d);
                dbjVar2.ak(((ByteBuffer) dcqVar.f13976f).array(), ((ByteBuffer) dcqVar.f13976f).position(), apeVar3.f10611c + 12);
                int i4 = apeVar3.f10611c + 12;
                ByteBuffer byteBuffer2 = (ByteBuffer) dcqVar.f13976f;
                byteBuffer2.position(byteBuffer2.position() + i4);
            } else if (apeVar3 instanceof aey) {
                dcqVar.l(apeVar3.f10611c - 4);
                int position2 = ((ByteBuffer) dcqVar.f13976f).position();
                dcqVar.i(dqv.f14652a);
                dbj dbjVar3 = (dbj) danVar;
                dbjVar3.af();
                dbjVar3.aa(apeVar3.f10612d + 12);
                dbjVar3.ak(((ByteBuffer) dcqVar.f13976f).array(), ((ByteBuffer) dcqVar.f13976f).position(), apeVar3.f10611c - 4);
                int i5 = apeVar3.f10611c - 4;
                ByteBuffer byteBuffer3 = (ByteBuffer) dcqVar.f13976f;
                byteBuffer3.position(byteBuffer3.position() + i5);
                crc32.reset();
                crc32.update(((ByteBuffer) dcqVar.f13976f).array(), position2, apeVar3.f10611c);
                dcqVar.l((int) crc32.getValue());
            }
        }
        ((ByteBuffer) dcqVar.f13976f).put(j);
        return i2;
    }
}
