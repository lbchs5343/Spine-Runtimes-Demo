package com.bytedance.sdk.component.o.dq;

import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class dq<T> implements BlockingQueue<T> {
    private final BlockingQueue<T> dq;

    public dq(BlockingQueue blockingQueue) {
        if (blockingQueue == null) {
            this.dq = new SynchronousQueue();
        } else {
            this.dq = blockingQueue;
        }
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue, java.util.Collection
    public boolean add(T t) {
        return this.dq.add(t);
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        return this.dq.addAll(collection);
    }

    @Override // java.util.Collection
    public void clear() {
        this.dq.clear();
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Collection
    public boolean contains(Object obj) {
        return this.dq.contains(obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        return this.dq.containsAll(collection);
    }

    public final BlockingQueue d() {
        return this.dq;
    }

    public final String dq() {
        return this.dq.getClass().getName();
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection collection) {
        return this.dq.drainTo(collection);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection collection, int i) {
        return this.dq.drainTo(collection, i);
    }

    @Override // java.util.Queue
    public T element() {
        return this.dq.element();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.dq.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return this.dq.iterator();
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue
    public boolean offer(T t) {
        return this.dq.offer(t);
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(T t, long j, TimeUnit timeUnit) throws InterruptedException {
        return this.dq.offer(t, j, timeUnit);
    }

    public int ox() {
        return this.dq.size();
    }

    @Override // java.util.Queue
    public T peek() {
        return this.dq.peek();
    }

    @Override // java.util.Queue
    public T poll() {
        return this.dq.poll();
    }

    @Override // java.util.concurrent.BlockingQueue
    public T poll(long j, TimeUnit timeUnit) throws InterruptedException {
        try {
            return this.dq.poll(j, timeUnit);
        } catch (IllegalMonitorStateException unused) {
            return null;
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(T t) throws InterruptedException {
        this.dq.put(t);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        return this.dq.remainingCapacity();
    }

    @Override // java.util.Queue
    public T remove() {
        return this.dq.remove();
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Collection
    public boolean remove(Object obj) {
        return this.dq.remove(obj);
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        return this.dq.removeAll(collection);
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        return this.dq.retainAll(collection);
    }

    @Override // java.util.Collection
    public final int size() {
        return ox();
    }

    @Override // java.util.concurrent.BlockingQueue
    public T take() throws InterruptedException {
        return this.dq.take();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return new Object[0];
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length > 0) {
            tArr[0] = null;
        }
        return tArr;
    }
}
