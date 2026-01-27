-- Enable Row Level Security
ALTER TABLE public.likes ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.comments ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.bookmarks ENABLE ROW LEVEL SECURITY;

-- LIKES POLICIES
-- Anyone can see the likes
CREATE POLICY "Likes are viewable by everyone" 
ON public.likes FOR SELECT 
USING (true);

-- Authenticated users can like a post
CREATE POLICY "Users can insert their own likes" 
ON public.likes FOR INSERT 
WITH CHECK (auth.uid() = user_id);

-- Users can unlike (delete) their own likes
CREATE POLICY "Users can delete their own likes" 
ON public.likes FOR DELETE 
USING (auth.uid() = user_id);


-- COMMENTS POLICIES
-- Anyone can read comments
CREATE POLICY "Comments are viewable by everyone" 
ON public.comments FOR SELECT 
USING (true);

-- Authenticated users can comment
CREATE POLICY "Users can insert their own comments" 
ON public.comments FOR INSERT 
WITH CHECK (auth.uid() = user_id);

-- Users can edit their own comments
CREATE POLICY "Users can update their own comments" 
ON public.comments FOR UPDATE 
USING (auth.uid() = user_id)
WITH CHECK (auth.uid() = user_id);

-- Users can delete their own comments
CREATE POLICY "Users can delete their own comments" 
ON public.comments FOR DELETE 
USING (auth.uid() = user_id);


-- BOOKMARKS POLICIES (Private)
-- Only the owner can see their bookmarks
CREATE POLICY "Bookmarks are private" 
ON public.bookmarks FOR SELECT 
USING (auth.uid() = user_id);

-- Authenticated users can bookmark
CREATE POLICY "Users can insert their own bookmarks" 
ON public.bookmarks FOR INSERT 
WITH CHECK (auth.uid() = user_id);

-- Users can delete their own bookmarks
CREATE POLICY "Users can delete their own bookmarks" 
ON public.bookmarks FOR DELETE 
USING (auth.uid() = user_id);
