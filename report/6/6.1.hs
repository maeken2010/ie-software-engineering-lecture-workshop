-- muに対応
join' :: Maybe (Maybe a) -> Maybe a
join' Nothing         = Nothing
join' (Just Nothing)  = Nothing
join' (Just (Just x)) = Just x

-- etaに対応
return' :: a -> Maybe a
return' x = Just x
